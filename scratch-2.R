
lab_corpus <- corpus(sample_n(lab_speech, 20), docid_field = "eo_id", text_field = "speech")

toks <- quanteda::tokens(texts(lab_corpus), remove_hyphens = TRUE)

result <-
  data.frame(docname = if (is.null(names(texts(lab_corpus)))) paste0("text", 1:length(texts(lab_corpus))) else names(texts(lab_corpus)),
             Segment = 1:length(texts(lab_corpus)), row.names = NULL, stringsAsFactors = FALSE)

toks <- quanteda::tokens_tolower(toks)

result[["WC"]] <- quanteda::ntoken(toks)

result[["Sixltr"]] <- sapply(toks, function(y) sum(stringi::stri_length(y) > 6)) / result[["WC"]] * 100

if (!is.null(dictionary)) toks2 <- tokens_lookup(toks, dictionary)

result[["Sixltr2"]] <- sapply(quanteda::tokens(texts(lab_corpus), remove_hyphens = TRUE), function(y) sum(stringi::stri_length(y) > 6)) / result[["WC"]] * 100
