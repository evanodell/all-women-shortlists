
# DFM Keyness creation ----------------------------------------------------


library(readr)
library(dplyr)
library(quanteda)

lab_corpus <- read_rds("data/lab_corpus.rds")

parliament_stopwords <- c(stopwords(), "hon", "rose", "n", "friend", "way", 
                          "give", "gentleman", "right", "percent", "per",
                          "cent", "prime", "minister")

lab_dfm_key <- lab_corpus %>% 
  dfm(remove = parliament_stopwords, remove_punct = TRUE,
      verbose = TRUE, groups = "gender") %>%
  dfm_weight("count")

write_rds(lab_dfm_key, "data/lab_dfm_key.rds")

lab_corpus_fem <- corpus_subset(lab_corpus, gender=="Female")

lab_dfm_key_fem <- lab_corpus_fem %>% 
  dfm(remove = parliament_stopwords, remove_punct = TRUE,
      verbose = TRUE, groups = "short_list") %>%
  dfm_weight("count")

write_rds(lab_dfm_key_fem, "data/lab_dfm_key_fem.rds")



# labour-conservative-dfm -------------------------------------------------

library(readr)
library(quanteda)
library(dplyr)

all_speech <- read_rds("data/senti_df2.rds")

lab_con_speech <- all_speech %>% 
  filter(party_group %in% c("Labour", "Conservative"),
         as_speaker == FALSE, house_start_date >= "1997-05-01",
         speech_date >= "1997-05-01", speech_date < "2017-06-08",
         word_count > 0)

rm(all_speech)

lab_con_corpus <- corpus(lab_con_speech, 
                         docid_field = "eo_id", text_field = "speech")

parliament_stopwords <- c(stopwords(), "hon", "rose", "n", "friend", "way", 
                          "give", "gentleman", "right", "percent", "per",
                          "cent", "prime", "minister")

lab_con_dfm <- lab_con_corpus %>% 
  dfm(remove = parliament_stopwords, remove_punct = TRUE,
      verbose = TRUE, groups = "party_group") %>%
  dfm_weight("count")

write_rds(lab_con_dfm, "data/lab_con_dfm.rds")
