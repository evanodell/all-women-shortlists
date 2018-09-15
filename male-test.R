
library(stm)
library(quanteda)
library(quanteda.corpora)
library(readr)

lab_corpus <- read_rds("data/lab_corpus.rds")

#lab_corpus_fem <- corpus_subset(lab_corpus, gender=="Female")

parliament_stopwords <- c(stopwords(), "hon", "rose", "n", "friend", "way", 
                          "give", "gentleman", "right", "percent", "per",
                          "cent", "prime", "minister", "c")
#ndoc(lab_corpus_fem)

lab_corpus_stm <- dfm(lab_corpus, remove_punct = TRUE,
                          remove = parliament_stopwords, verbose = TRUE) %>%
  convert(to = "stm", docvars = NULL)

lab_corpus_stm$meta$short_list <- as.factor(lab_corpus_stm$meta$short_list)

#lab_corpus_fem_stm$meta$post_name <- as.factor(lab_corpus_fem_stm$meta$post_name)

write_rds(lab_corpus_stm, "data/lab_corpus_stm.rds")


library(stm)
library(readr)

lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")

set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k45_m <- stm(lab_corpus_stm$documents, 
                       vocab = lab_corpus_stm$vocab, 
                       K = 45, prevalence = ~short_list+gender, 
                       seed = 9957388,
                       data = lab_corpus_stm$meta,
                       verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k45_m, "data/topic_model_k45_m.rds")
