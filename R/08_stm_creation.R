

# stm-corpus creation -----------------------------------------------------

library(stm)
library(quanteda)
library(quanteda.corpora)
library(readr)
library(viridis)
library(dplyr)
library(ggplot2)

lab_corpus <- read_rds("data/lab_corpus.rds")

parliament_stopwords <- c(stopwords(), "hon", "rose", "n", "friend", "way", 
                          "give", "gentleman", "right", "percent", "per",
                          "cent", "prime", "minister", "c")
#ndoc(lab_corpus_fem)

lab_corpus_stm <- dfm(lab_corpus, remove_punct = TRUE,
                          remove = parliament_stopwords, verbose = TRUE) %>%
  convert(to = "stm", docvars = NULL)

lab_corpus_stm$meta$short_list <- as.factor(lab_corpus_stm$meta$short_list)

lab_corpus_stm$meta$gender <- as.factor(lab_corpus_stm$meta$gender)

lab_corpus_stm$meta$gender <- factor(lab_corpus_stm$meta$gender,
                                    levels=c("Male", "Female"))

lab_corpus_stm$meta$gender_sl <- factor(
  paste0(lab_corpus_stm$meta$gender, "_", lab_corpus_stm$meta$short_list),
  levels=c("Male_FALSE", "Female_FALSE", "Female_TRUE")
  )

write_rds(lab_corpus_stm, "data/lab_corpus_stm.rds")


# stm-creation-k30 -------------------------------------------------------

lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")

set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k30_m <- stm(lab_corpus_stm$documents, 
                         vocab = lab_corpus_stm$vocab, 
                         K = 30, prevalence = ~gender_sl, 
                         seed = 9957388,
                         data = lab_corpus_stm$meta,
                         verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k30_m, "data/topic_model_k30_m.rds")

# stm-creation-k45 -------------------------------------------------------
set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k45_m <- stm(lab_corpus_stm$documents, 
                         vocab = lab_corpus_stm$vocab, 
                         K = 45, prevalence = ~gender_sl, 
                         seed = 9957388,
                         data = lab_corpus_stm$meta,
                         verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k45_m, "data/topic_model_k45_m.rds")

# stm-creation-k60 -------------------------------------------------------
set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k60_m <- stm(lab_corpus_stm$documents, 
                         vocab = lab_corpus_stm$vocab, 
                         K = 60, prevalence = ~gender_sl, 
                         seed = 9957388,
                         data = lab_corpus_stm$meta,
                         verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k60_m, "data/topic_model_k60_m.rds")

# stm-creation-k0 -------------------------------------------------------

# set.seed(402)
# #topic_model_k30 seed = 9957388
# topic_model_k0_m <- stm(lab_corpus_stm$documents, 
#                         vocab = lab_corpus_stm$vocab, 
#                         K = 0, prevalence = ~gender + short_list, 
#                         seed = 9957388,
#                         data = lab_corpus_stm$meta,
#                         verbose = TRUE, init.type = "Spectral")
# 
# write_rds(topic_model_k0_m, "data/topic_model_k0_m.rds")
# 
# topic_model_k0_m2 <- stm(lab_corpus_stm$documents,
#                          vocab = lab_corpus_stm$vocab,
#                          K = 0, prevalence = ~gender_sl,
#                          seed = 9957388,
#                          data = lab_corpus_stm$meta,
#                          verbose = TRUE, init.type = "Spectral")
# 
# write_rds(topic_model_k0_m2, "data/topic_model_k0_m2.rds")

# topic_model_k0_m3 <- stm(lab_corpus_stm$documents,
#                         vocab = lab_corpus_stm$vocab,
#                         K = 0, prevalence = ~gender * short_list + s(year),
#                         content = ~gender_sl,
#                         seed = 9957388,
#                         data = lab_corpus_stm$meta,
#                         verbose = TRUE, init.type = "Spectral")
# 
# write_rds(topic_model_k0_m3, "data/topic_model_k0_m3.rds")

# stm-creation-k80 -------------------------------------------------------

set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k80_m <- stm(lab_corpus_stm$documents, 
                        vocab = lab_corpus_stm$vocab, 
                        K = 80, prevalence = ~gender_sl, 
                        seed = 9957388,
                        data = lab_corpus_stm$meta,
                        verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k80_m, "data/topic_model_k80_m.rds")

# stm-creation-k100 -------------------------------------------------------

set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k100_m <- stm(lab_corpus_stm$documents, 
                         vocab = lab_corpus_stm$vocab, 
                         K = 100, prevalence = ~gender_sl, 
                         seed = 9957388,
                         data = lab_corpus_stm$meta,
                         verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k100_m, "data/topic_model_k100_m.rds")

rm(list=ls())
gc()

# corr-creation-k30 -------------------------------------------------------

# topic_model_k30 <- read_rds("data/topic_model_k30_m.rds")
# 
# lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")
# 
# corr_topic_k30 <- topicCorr(topic_model_k30, method = "huge", verbose = FALSE)
# 
# prep_k30 <- estimateEffect(~gender_sl, topic_model_k30, 
#                            meta = lab_corpus_stm$meta, uncertainty = "Global")
# 
# write_rds(corr_topic_k30, "data/corr_topic_k30_m.rds")
# 
# write_rds(prep_k30, "data/prep_k30_m.rds")

# corr-creation-k45 -------------------------------------------------------

# rm(list=ls())
# gc()
# lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")
# 
# 
# topic_model_k45 <- read_rds("data/topic_model_k45_m.rds")
# 
# corr_topic_k45 <- topicCorr(topic_model_k45, method = "huge", verbose = FALSE)
# 
# prep_k45 <- estimateEffect( ~gender_sl, topic_model_k45, 
#                            meta = lab_corpus_stm$meta, uncertainty = "Global")
# 
# write_rds(corr_topic_k45, "data/corr_topic_k45_m.rds")
# 
# write_rds(prep_k45, "data/prep_k45_m.rds")

# corr-creation-k60 -------------------------------------------------------

# rm(list=ls())
# gc()
# lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")
# 
# topic_model_k60 <- read_rds("data/topic_model_k60_m.rds")
# 
# corr_topic_K60 <- topicCorr(topic_model_k60, method = "huge", verbose = FALSE)
# 
# prep_K60 <- estimateEffect(~gender_sl, topic_model_k60, 
#                            meta = lab_corpus_stm$meta, uncertainty = "Global")
# 
# write_rds(corr_topic_K60, "data/corr_topic_K60_m.rds")
# 
# write_rds(prep_K60, "data/prep_K60_m.rds")


# corr-creation-k0 -------------------------------------------------------
rm(list=ls())
gc()
lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")

topic_model_k0 <- read_rds("data/topic_model_k0_m.rds")

corr_topic_k0 <- topicCorr(topic_model_k0, method = "huge", verbose = FALSE)

prep_k0 <- estimateEffect(~ gender_sl, topic_model_k0, 
                          meta = lab_corpus_stm$meta, uncertainty = "Global")

prep_k0_gender <- estimateEffect(~ gender, topic_model_k0, 
                          meta = lab_corpus_stm$meta, uncertainty = "Global")

write_rds(prep_k0_gender, "data/prep_k0_gender.rds")

write_rds(corr_topic_k0, "data/corr_topic_k0_m.rds")

write_rds(prep_k0, "data/prep_k0_m.rds")

# corr-creation-k80 -------------------------------------------------------

# rm(list=ls())
# gc()
# lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")
# 
# topic_model_k80 <- read_rds("data/topic_model_k80_m.rds")
# 
# corr_topic_k80 <- topicCorr(topic_model_k80, method = "huge", verbose = FALSE)
# 
# prep_k80 <- estimateEffect(~gender_sl, topic_model_k80, 
#                           meta = lab_corpus_stm$meta, uncertainty = "Global")
# 
# write_rds(corr_topic_k80, "data/corr_topic_k80_m.rds")
# 
# write_rds(prep_k80, "data/prep_k80_m.rds")

# corr-creation-k100 -------------------------------------------------------


# lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")
# 
# topic_model_k100 <- read_rds("data/topic_model_k100_m.rds")
# 
# corr_topic_k100 <- topicCorr(topic_model_k100, method = "huge", verbose = FALSE)
# 
# prep_k100 <- estimateEffect(~gender_sl, topic_model_k100, 
#                           meta = lab_corpus_stm$meta, uncertainty = "Global")
# 
# write_rds(corr_topic_k100, "data/corr_topic_k100_m.rds")
# 
# write_rds(prep_k100, "data/prep_k100_m.rds")

rm(list=ls())
gc()

library(purrr)
topic_model_k30 <- read_rds("data/topic_model_k30_m.rds")

topic_model_k45 <- read_rds("data/topic_model_k45_m.rds")

topic_model_k60 <- read_rds("data/topic_model_k60_m.rds")

topic_model_k0 <- read_rds("data/topic_model_k0_m.rds")

topic_model_k80 <- read_rds("data/topic_model_k80_m.rds")

topic_model_k100 <- read_rds("data/topic_model_k100_m.rds")

lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")

heldout <- make.heldout(lab_corpus_stm$documents, lab_corpus_stm$vocab)

#30 validity --------

exclusivity_k30 <- exclusivity(topic_model_k30)

semantic_coherence_k30 <- semanticCoherence(topic_model_k30, lab_corpus_stm$documents)

check_residuals_k30 <- checkResiduals(topic_model_k30, lab_corpus_stm$documents)

bound_k30 <- max(topic_model_k30$convergence$bound)

lfact_k30 <- lfactorial(topic_model_k30$settings$dim$K)

eval_heldout_k30 <-  eval.heldout(topic_model_k30, heldout$missing)

#45 validity --------

exclusivity_k45 <- exclusivity(topic_model_k45)

semantic_coherence_k45 <- semanticCoherence(topic_model_k45, lab_corpus_stm$documents)

check_residuals_k45 <- checkResiduals(topic_model_k45, lab_corpus_stm$documents)

bound_k45 <- max(topic_model_k45$convergence$bound)

lfact_k45 <- lfactorial(topic_model_k45$settings$dim$K)

eval_heldout_k45 <-  eval.heldout(topic_model_k45, heldout$missing)

# 60 validity --------

exclusivity_k60 <- exclusivity(topic_model_k60)

semantic_coherence_k60 <- semanticCoherence(topic_model_k60, lab_corpus_stm$documents)

check_residuals_k60 <- checkResiduals(topic_model_k60, lab_corpus_stm$documents)

bound_k60 <- max(topic_model_k60$convergence$bound)

lfact_k60 <- lfactorial(topic_model_k60$settings$dim$K)

eval_heldout_k60 <-  eval.heldout(topic_model_k60, heldout$missing)

#0 validity --------

exclusivity_k0 <- exclusivity(topic_model_k0)

semantic_coherence_k0 <- semanticCoherence(topic_model_k0, lab_corpus_stm$documents)

check_residuals_k0 <- checkResiduals(topic_model_k0, lab_corpus_stm$documents)

bound_k0 <- max(topic_model_k0$convergence$bound)

lfact_k0 <- lfactorial(topic_model_k0$settings$dim$K)

eval_heldout_k0 <-  eval.heldout(topic_model_k0, heldout$missing)

# 80 validity --------

exclusivity_k80 <- exclusivity(topic_model_k80)

semantic_coherence_k80 <- semanticCoherence(topic_model_k80, lab_corpus_stm$documents)

check_residuals_k80 <- checkResiduals(topic_model_k80, lab_corpus_stm$documents)

bound_k80 <- max(topic_model_k80$convergence$bound)

lfact_k80 <- lfactorial(topic_model_k80$settings$dim$K)

eval_heldout_k80 <-  eval.heldout(topic_model_k80, heldout$missing)


#100 validity --------

exclusivity_k100 <- exclusivity(topic_model_k100)

semantic_coherence_k100 <- semanticCoherence(topic_model_k100, lab_corpus_stm$documents)

check_residuals_k100 <- checkResiduals(topic_model_k100, lab_corpus_stm$documents)

bound_k100 <- max(topic_model_k100$convergence$bound)

lfact_k100 <- lfactorial(topic_model_k100$settings$dim$K)

eval_heldout_k100 <-  eval.heldout(topic_model_k100, heldout$missing)

library(tibble)

k_models <- data_frame(K = c(30, 45, 60, 66, 80, 100),
                       exclusivity = list(exclusivity_k30,
                                          exclusivity_k45,
                                          exclusivity_k60,
                                          exclusivity_k0,
                                          exclusivity_k80,
                                          exclusivity_k100),
                       semantic_coherence = list(semantic_coherence_k30,
                                                 semantic_coherence_k45,
                                                 semantic_coherence_k60,
                                                 semantic_coherence_k0,
                                                 semantic_coherence_k80,
                                                 semantic_coherence_k100),
                       check_residuals = list(check_residuals_k30,
                                               check_residuals_k45,
                                               check_residuals_k60,
                                               check_residuals_k0,
                                               check_residuals_k80,
                                               check_residuals_k100),
                       bound = c(bound_k30,
                                    bound_k45,
                                    bound_k60,
                                    bound_k0,
                                    bound_k80,
                                    bound_k100),
                       lfact = c(lfact_k30,
                                    lfact_k45,
                                    lfact_k60,
                                    lfact_k0,
                                    lfact_k80,
                                    lfact_k100),
                       eval_heldout = list(eval_heldout_k30,
                                        eval_heldout_k45,
                                        eval_heldout_k60,
                                        eval_heldout_k0,
                                        eval_heldout_k80,
                                        eval_heldout_k100))

k_models$lbound <- k_models$bound + k_models$lfact

write_rds(k_models, "data/k_models.rds")

