
# Bigrams -----------------------------------------------------------------


library(quanteda)
library(readr)

lab_corpus <- read_rds("data/lab_corpus.rds")

lab_corpus_fem <- corpus_subset(lab_corpus, gender=="Female")

fem_bigrams <- tokens(lab_corpus_fem, what = "word", remove_numbers = FALSE,
                      remove_punct = FALSE, remove_symbols = FALSE,  
                      remove_twitter = TRUE, remove_url = TRUE, 
                      ngrams = 2, verbose = TRUE)

bigram_phrases <- c("i", "i'd",  "i'll", "i'm", "i've", "me", "methinks",
                    "mine", "my", "myself", "let's", "lets", "our", "ours",
                    "ourselves", "us", "we", "we'd", "we'll", "we're", "we've")

bigram_phrases <- paste0(bigram_phrases, "_*")

pro_bigram <- tokens_select(fem_bigrams, phrase(bigram_phrases))
#84569

write_rds(pro_bigram, "data/pro_bigram.rds")