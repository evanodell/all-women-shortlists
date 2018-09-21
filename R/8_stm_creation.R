

# stm-corpus creation -----------------------------------------------------

library(stm)
library(quanteda)
library(quanteda.corpora)
library(readr)

lab_corpus <- read_rds("data/lab_corpus.rds")

parliament_stopwords <- c(stopwords(), "hon", "rose", "n", "friend", "way", 
                          "give", "gentleman", "right", "percent", "per",
                          "cent", "prime", "minister", "c")
#ndoc(lab_corpus_fem)

lab_corpus_stm <- dfm(lab_corpus, remove_punct = TRUE,
                          remove = parliament_stopwords, verbose = TRUE) %>%
  convert(to = "stm", docvars = NULL)

lab_corpus_stm$meta$short_list <- as.factor(lab_corpus_stm$meta$short_list)

write_rds(lab_corpus_stm, "data/lab_corpus_stm.rds")


# stm-creation-k30 -------------------------------------------------------

library(stm)
library(readr)

lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")

set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k30_m <- stm(lab_corpus_stm$documents, 
                         vocab = lab_corpus_stm$vocab, 
                         K = 30, prevalence = ~short_list+gender, 
                         seed = 9957388,
                         data = lab_corpus_stm$meta,
                         verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k30_m, "data/topic_model_k30_m.rds")

# stm-creation-k45 -------------------------------------------------------
set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k45_m <- stm(lab_corpus_stm$documents, 
                         vocab = lab_corpus_stm$vocab, 
                         K = 45, prevalence = ~short_list+gender, 
                         seed = 9957388,
                         data = lab_corpus_stm$meta,
                         verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k45_m, "data/topic_model_k45_m.rds")

# stm-creation-k60 -------------------------------------------------------
set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k60_m <- stm(lab_corpus_stm$documents, 
                         vocab = lab_corpus_stm$vocab, 
                         K = 60, prevalence = ~short_list+gender, 
                         seed = 9957388,
                         data = lab_corpus_stm$meta,
                         verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k60_m, "data/topic_model_k60_m.rds")

# stm-creation-k0 -------------------------------------------------------

set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k0_m <- stm(lab_corpus_stm$documents, 
                        vocab = lab_corpus_stm$vocab, 
                        K = 0, prevalence = ~gender + short_list, 
                        seed = 9957388,
                        data = lab_corpus_stm$meta,
                        verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k0_m, "data/topic_model_k0_m.rds")



# stm-creation-k80 -------------------------------------------------------

set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k80_m <- stm(lab_corpus_stm$documents, 
                        vocab = lab_corpus_stm$vocab, 
                        K = 80, prevalence = ~short_list+gender, 
                        seed = 9957388,
                        data = lab_corpus_stm$meta,
                        verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k80_m, "data/topic_model_k80_m.rds")

# stm-creation-k100 -------------------------------------------------------

set.seed(402)
#topic_model_k30 seed = 9957388
topic_model_k100_m <- stm(lab_corpus_stm$documents, 
                         vocab = lab_corpus_stm$vocab, 
                         K = 100, prevalence = ~short_list+gender, 
                         seed = 9957388,
                         data = lab_corpus_stm$meta,
                         verbose = TRUE, init.type = "Spectral")

write_rds(topic_model_k100_m, "data/topic_model_k100_m.rds")

# corr-creation-k30 -------------------------------------------------------

library(viridis)
library(dplyr)
library(igraph)
library(ggplot2)
library(quanteda)
topic_model_k30 <- read_rds("data/topic_model_k30_m.rds")

corr_topic_k30 <- topicCorr(topic_model_k30, method = "huge", verbose = FALSE)

prep_k30 <- estimateEffect(1:30 ~ short_list + gender, topic_model_k30, 
                           meta = lab_corpus_stm$meta, uncertainty = "Global")

write_rds(corr_topic_k30, "data/corr_topic_k30_m.rds")

write_rds(prep_k30, "data/prep_k30_m.rds")

# corr-creation-k45 -------------------------------------------------------

topic_model_k45 <- read_rds("data/topic_model_k45_m.rds")

corr_topic_k45 <- topicCorr(topic_model_k45, method = "huge", verbose = FALSE)

prep_k45 <- estimateEffect(1:45 ~ short_list + gender, topic_model_k45, 
                           meta = lab_corpus_stm$meta, uncertainty = "Global")

write_rds(corr_topic_k45, "data/corr_topic_k45_m.rds")

write_rds(prep_k45, "data/prep_k45_m.rds")

# corr-creation-k60 -------------------------------------------------------

topic_model_k60 <- read_rds("data/topic_model_k60_m.rds")

corr_topic_K60 <- topicCorr(topic_model_k60, method = "huge", verbose = FALSE)

prep_K60 <- estimateEffect(1:60 ~ short_list + gender, topic_model_k60, 
                           meta = lab_corpus_stm$meta, uncertainty = "Global")

write_rds(corr_topic_K60, "data/corr_topic_K60_m.rds")

write_rds(prep_K60, "data/prep_K60_m.rds")


# corr-creation-k0 -------------------------------------------------------


lab_corpus_stm$meta$gender <- as.factor(lab_corpus_stm$meta$gender)

lab_corpus_stm$meta$gender = factor(lab_corpus_stm$meta$gender, 
                                    levels=c("Male", "Female"))

topic_model_k0 <- read_rds("data/topic_model_k0_m.rds")

corr_topic_k0 <- topicCorr(topic_model_k0, method = "huge", verbose = FALSE)

prep_k0 <- estimateEffect(~ gender+short_list, topic_model_k0, 
                          meta = lab_corpus_stm$meta, uncertainty = "Global")

write_rds(corr_topic_k0, "data/corr_topic_k0_m.rds")

write_rds(prep_k0, "data/prep_k0_m.rds")

# corr-creation-k80 -------------------------------------------------------

topic_model_k80 <- read_rds("data/topic_model_k80_m.rds")

corr_topic_k80 <- topicCorr(topic_model_k80, method = "huge", verbose = FALSE)

prep_k80 <- estimateEffect(1:80 ~ short_list + gender, topic_model_k80, 
                          meta = lab_corpus_stm$meta, uncertainty = "Global")

write_rds(corr_topic_k80, "data/corr_topic_k80_m.rds")

write_rds(prep_k80, "data/prep_k80_m.rds")

# corr-creation-k100 -------------------------------------------------------

topic_model_k100 <- read_rds("data/topic_model_k100_m.rds")

corr_topic_k100 <- topicCorr(topic_model_k100, method = "huge", verbose = FALSE)

prep_k100 <- estimateEffect(1:100 ~ short_list + gender, topic_model_k100, 
                          meta = lab_corpus_stm$meta, uncertainty = "Global")




write_rds(corr_topic_k100, "data/corr_topic_k100_m.rds")

write_rds(prep_k100, "data/prep_k100_m.rds")


# validity plot -----------------------------------------------------------

many_models <- data_frame(K = c("30", "45", "60", "66", "80", "100"),
                          topic_model = list(topic_model_k30,
                                          topic_model_k45,
                                          topic_model_k60,
                                          topic_model_k0,
                                          topic_model_k80,
                                          topic_model_k100))

heldout <- make.heldout(lab_corpus_stm$documents, lab_corpus_stm$vocab)

library(purrr)

#checkResiduals(topic_model_k30, lab_corpus_stm$documents,  tol= 0.01)


#30  --------

exclusivity_k30 <- exclusivity(topic_model_k30)

semantic_coherence_k30 <- semanticCoherence(topic_model_k30, lab_corpus_stm$documents)

check_residuals_k30 <- checkResiduals(topic_model_k30, lab_corpus_stm$documents)

bound_k30 <- max(topic_model_k30$convergence$bound)

lfact_k30 <- lfactorial(topic_model_k30$settings$dim$K)

eval_heldout_k30 <-  eval.heldout(topic_model_k30, heldout$missing)

#45  --------

exclusivity_k45 <- exclusivity(topic_model_k45)

semantic_coherence_k45 <- semanticCoherence(topic_model_k45, lab_corpus_stm$documents)

check_residuals_k45 <- checkResiduals(topic_model_k45, lab_corpus_stm$documents)

bound_k45 <- max(topic_model_k45$convergence$bound)

lfact_k45 <- lfactorial(topic_model_k45$settings$dim$K)

eval_heldout_k45 <-  eval.heldout(topic_model_k45, heldout$missing)



# 60  --------

exclusivity_k60 <- exclusivity(topic_model_k60)

semantic_coherence_k60 <- semanticCoherence(topic_model_k60, lab_corpus_stm$documents)

check_residuals_k60 <- checkResiduals(topic_model_k60, lab_corpus_stm$documents)

bound_k60 <- max(topic_model_k60$convergence$bound)

lfact_k60 <- lfactorial(topic_model_k60$settings$dim$K)

eval_heldout_k60 <-  eval.heldout(topic_model_k60, heldout$missing)

#0  --------

exclusivity_k0 <- exclusivity(topic_model_k0)

semantic_coherence_k0 <- semanticCoherence(topic_model_k0, lab_corpus_stm$documents)

check_residuals_k0 <- checkResiduals(topic_model_k0, lab_corpus_stm$documents)

bound_k0 <- max(topic_model_k0$convergence$bound)

lfact_k0 <- lfactorial(topic_model_k0$settings$dim$K)

eval_heldout_k0 <-  eval.heldout(topic_model_k0, heldout$missing)

# 80  --------

exclusivity_k80 <- exclusivity(topic_model_k80)

semantic_coherence_k80 <- semanticCoherence(topic_model_k80, lab_corpus_stm$documents)

check_residuals_k80 <- checkResiduals(topic_model_k80, lab_corpus_stm$documents)

bound_k80 <- max(topic_model_k80$convergence$bound)

lfact_k80 <- lfactorial(topic_model_k80$settings$dim$K)

eval_heldout_k80 <-  eval.heldout(topic_model_k80, heldout$missing)


#100 --------
exclusivity_k100 <- exclusivity(topic_model_k100)

semantic_coherence_k100 <- semanticCoherence(topic_model_k100, lab_corpus_stm$documents)

check_residuals_k100 <- checkResiduals(topic_model_k100, lab_corpus_stm$documents)

bound_k100 <- max(topic_model_k100$convergence$bound)

lfact_k100 <- lfactorial(topic_model_k100$settings$dim$K)

eval_heldout_k100 <-  eval.heldout(topic_model_k100, heldout$missing)

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

library(tidyr)


# library(stm)
# library(readr)
# library(purrr)
# library(dplyr)
# library(tibble)
# 
# lab_corpus_stm <- read_rds("data/lab_corpus_stm.rds")
# 
# 
# model_check <- data_frame(K = c(30, 50, 75, 100)) %>%
#   mutate(topic_model = ~stm(documents = lab_corpus_stm$documents, 
#                             vocab = lab_corpus_stm$vocab, K = .,
#                             prevalence = ~short_list+gender, 
#                             data = lab_corpus_stm$meta,
#                             verbose = TRUE))
# 
# search_results_m <- searchK(documents = lab_corpus_stm$documents, 
#                             vocab = lab_corpus_stm$vocab, 
#                             K = c(30, 50, 75, 100),
#                             prevalence = ~short_list+gender, 
#                             data = lab_corpus_stm$meta,
#                             verbose = TRUE)
# 
# write_rds(search_results_m, "data/search_results_m.rds")
# 
# search_results_m
