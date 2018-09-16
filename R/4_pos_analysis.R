


# Spacy annotations -------------------------------------------------------


library(spacyr)
library(progress)
library(readr)
library(quanteda)
library(dplyr)

lab_speech <- read_rds("data/lab_speech.rds")

lab_speech$year <- as.factor(lab_speech$year)

split_data <- split(lab_speech, lab_speech$year) ### Splitting data variable

all_names <- names(split_data)

pb_save <- progress_bar$new(total = length(all_names),
                            format = "[:bar] :percent ETA: :eta Elapsed: :elapsedfull")

for (this_name in all_names) {
  save_name <- paste0(this_name, "x.rds")
  write_rds(split_data[[this_name]], path = save_name)
  pb_save$tick()
}

#devtools::install_github("quanteda/spacyr")
#spacy_install(python_path = "/Users/evanodell/Documents/anaconda3/bin/python3")
spacy_initialize()

atemp <- list.files(pattern = "*x.rds")

pb <- progress_bar$new(total = length(atemp), 
                       format = "[:bar] :percent ETA: :eta Elapsed: :elapsedfull\n")

for (i in atemp) {
  pb$tick(0)
  
  df <- read_rds(i)
  
  message(cat("Corpusising "), i, "\n")
  
  lab_corpus <- corpus(df, docid_field = "eo_id", text_field = "speech")
  
  i <- gsub("x.rds", "", i)
  
  message(cat("Annotating "), i, "\n")
  
  # need to use corpus object for this
  lab_annotate <- spacy_parse(lab_corpus, tag = TRUE, dependency = TRUE,
                              lemma = FALSE, pos = FALSE, entity = TRUE) 
  
  save_name <- paste0("./annotated/ano_", i, ".rds")
  
  write_rds(lab_annotate, path = save_name)
  
  pb$tick()
  
  gc()
  
}

atemp2 <- list.files("./annotated/", pattern = "*.rds")

atemp2 <- paste0("annotated/", atemp2)

df.list <- sapply(atemp2, read_rds, simplify = FALSE)

annotated_labour <- bind_rows(df.list)

rm(df.list, atemp2)

write_rds(annotated_labour, "data/annotated_labour.rds")



# POS tidying -------------------------------------------------------------

library(readr)
library(dplyr)
annotated_labour <- read_rds("data/annotated_labour.rds")

post_df <- tibble::tribble(
  ~tag,    ~POS,
  "-LRB-", "PUNCT",
  "-RRB-", "PUNCT",
  ",", "PUNCT",
  ":", "PUNCT",
  ".", "PUNCT",
  "''", "PUNCT",
  "\"\"", "PUNCT",
  "``", "PUNCT",
  "$",   "SYM",
  "ADD",     "X",
  "AFX",   "ADJ",
  "BES",  "VERB",
  "CC",  "CONJ",
  "CD",   "NUM",
  "DT",   "DET",
  "EX",   "ADV",
  "FW",     "X",
  "GW",     "X",
  "HVS",  "VERB",
  "HYPH", "PUNCT",
  "IN",   "ADP",
  "JJ",   "ADJ",
  "JJR",   "ADJ",
  "JJS",   "ADJ",
  "LS", "PUNCT",
  "MD",  "VERB",
  "NFP", "PUNCT",
  "NIL",    "NA",
  "NN",  "NOUN",
  "NNP", "PROPN",
  "NNPS", "PROPN",
  "NNS",  "NOUN",
  "PDT",   "ADJ",
  "POS",  "PART",
  "PRP",  "PRON",
  "PRP$",   "ADJ",
  "RB",   "ADV",
  "RBR",   "ADV",
  "RBS",   "ADV",
  "RP",  "PART",
  "_SP", "SPACE",
  "SYM",   "SYM",
  "TO",  "PART",
  "UH",  "INTJ",
  "VB",  "VERB",
  "VBD",  "VERB",
  "VBG",  "VERB",
  "VBN",  "VERB",
  "VBP",  "VERB",
  "VBZ",  "VERB",
  "WDT",   "ADJ",
  "WP",  "NOUN",
  "WP$",   "ADJ",
  "WRB",   "ADV",
  "XX",     "X"
)

post_df$POS <- as.factor(post_df$POS)

annotated_labour <- annotated_labour %>% left_join(post_df)

#summary(annotated_labour)

write_rds(annotated_labour, "data/annotated_labour.rds")



# More POS Tidying --------------------------------------------------------



library(readr)
library(dplyr)
library(magrittr)
library(tidyr)
library(effsize)

annotated_labour <- read_rds("data/annotated_labour.rds")

ano_lab_tag <- annotated_labour %>% 
  filter(POS != "PUNCT", is.na(POS) == FALSE, POS != "SPACE") %>%
  group_by(doc_id, tag) %>%
  summarise(count = n()) %>%
  mutate(freq = count / sum(count)) %>% ungroup() 

ano_lab_tag$count <- NULL

ano_lab_tag <- ano_lab_tag %>% spread(tag, freq)

ano_lab_tag[is.na(ano_lab_tag)] <- 0

ano_lab_pos <- annotated_labour %>% 
  filter(POS != "PUNCT", is.na(POS) == FALSE, POS != "SPACE") %>%
  group_by(doc_id, POS) %>%
  summarise(count = n()) %>%
  mutate(freq = count / sum(count)) %>% ungroup() 

ano_lab_pos$count <- NULL

ano_lab_pos <- ano_lab_pos %>% spread(POS, freq)

ano_lab_pos[is.na(ano_lab_pos)] <- 0

lab_speech <- read_rds("data/lab_speech.rds")

ano_lab_tag <- ano_lab_tag %>% 
  left_join(select(lab_speech, eo_id, gender, short_list),
            by = c("doc_id"="eo_id"))

ano_lab_pos <- ano_lab_pos %>% 
  left_join(select(lab_speech, eo_id, gender, short_list),
            by = c("doc_id"="eo_id"))

ano_lab_pos$short_list <- as.factor(ano_lab_pos$short_list)
ano_lab_tag$short_list <- as.factor(ano_lab_tag$short_list)

write_rds(ano_lab_pos, "data/ano_lab_pos.rds")

write_rds(ano_lab_tag, "data/ano_lab_tag.rds")

