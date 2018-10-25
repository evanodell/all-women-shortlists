
# Labour LIWC -------------------------------------------------------------

#remotes::install_github("kbenoit/quanteda.dictionaries")
library(quanteda.dictionaries)
library(quanteda)
library(purrr)
library(tidyr)
library(effsize)
library(dplyr)
library(stringi)
library(readr)

lab_speech <- read_rds("data/lab_speech.rds")

lab_corpus <- read_rds("data/lab_corpus.rds")

liwc15_dict <- dictionary(file = "dict/LIWC2015_English_Flat.dic",
                          format = "LIWC")

lab_liwc <- liwcalike(lab_corpus, 
                      dictionary = liwc15_dict, 
                      verbose = TRUE) %>%
  left_join(lab_speech, by = c("docname" = "eo_id"))

# lab_liwc$WC <- stri_count_boundaries(lab_liwc$speech,
#                                        type="word", skip_word_none=FALSE)

lab_liwc$WC <- stri_count_boundaries(lab_liwc$speech,
                                     type="word", skip_word_none=FALSE)

lab_liwc$WPS <- lab_liwc$WC/stri_count_boundaries(lab_liwc$speech,
                                                  type="sentence", skip_word_none=FALSE)

lab_liwc[["Sixltr"]] <- sapply(
  tokens(texts(lab_corpus), remove_hyphens = TRUE),
  function(y) sum(stri_length(y) > 6)) / lab_liwc[["WC"]] * 100

# lab_liwc$FK <-  textstat_readability(texts(lab_corpus), "Flesch.Kincaid")
# 
# lab_liwc$FK <- lab_liwc$FK$Flesch.Kincaid
# 
# lab_liwc$FK <- if_else(lab_liwc$WC < 5, NA_real_, lab_liwc$FK)

# lab_liwc$WPS <- lab_liwc$WC/stri_count_boundaries(lab_liwc$speech,
#                                        type="sentence", skip_word_none=FALSE)

lab_liwc$total_syllable <- nsyllable(lab_liwc$speech)

lab_liwc$FK <- case_when(lab_liwc$WC >= 5 ~ 
                           0.39 * lab_liwc$WPS + 
                           11.8 * lab_liwc$total_syllable/
                           lab_liwc$WC - 15.59, TRUE ~ NA_real_)

#lab_liwc$FK2 <- if_else(lab_liwc$WC < 5, NA_real_, lab_liwc$FK2)

lab_liwc <- lab_liwc %>% select(docname, Segment, WC, WPS, FK, everything())

#lab_liwc <- read_rds("data/lab_liwc.rds")

write_rds(lab_liwc, "data/lab_liwc.rds")

lab_liwc_women <- filter(lab_liwc, gender=="Female",
                         house_start_date >= "1997-05-01")

write_rds(lab_liwc_women, "data/lab_liwc_women.rds")


# Labour Men-Women --------------------------------------------------------
fem_mac <- c("pronoun", "i", "we", "verb", "auxverb", "social", "posemo", 
             "negemo", "tentat", "Sixltr",  "article", "prep",
             "anger", "swear", "cogproc", "WPS", "WC", "FK")

# lab_liwc_men_women2_subset <- lab_liwc_men_women2 %>%
#   filter(attribute %in% fem_mac)

fem_mac_df <- tibble::tibble(
  word_type = fem_mac,
  women = c(1:length(fem_mac)),
  women_sd = c(1:length(fem_mac)),
  men = c(1:length(fem_mac)),
  men_sd = c(1:length(fem_mac)),
  cohen_d = c(1:length(fem_mac)),
  magnitude = c(1:length(fem_mac)))

for (i in fem_mac) {
  d <- (cohen.d(lab_liwc[[i]], lab_liwc$gender, na.rm = TRUE,
                noncentral = FALSE, pooled = TRUE))
  fem_mac_df$women[fem_mac_df$word_type==i] <- mean(lab_liwc[lab_liwc$gender == "Female", i], na.rm = TRUE)
  fem_mac_df$men[fem_mac_df$word_type==i] <- mean(lab_liwc[lab_liwc$gender == "Male", i], na.rm = TRUE)
  fem_mac_df$women_sd[fem_mac_df$word_type==i] <- sd(lab_liwc[lab_liwc$gender == "Female", i], na.rm = TRUE)
  fem_mac_df$men_sd[fem_mac_df$word_type==i] <- sd(lab_liwc[lab_liwc$gender == "Male", i], na.rm = TRUE)
  fem_mac_df$cohen_d[fem_mac_df$word_type==i] <- (d$estimate[[1]])
  fem_mac_df$magnitude[fem_mac_df$word_type==i] <- as.character(d$magnitude[[1]])
}

#fem_mac_df

fem_mac_df$word_type <- recode(fem_mac_df$word_type,
                               "pronoun" = "All Pronouns",
                               "i" = "First person singular pronouns",
                               "verb" = "Verbs",
                               "auxverb" = "Auxiliary verbs",
                               "social" = "Social processes ",
                               "posemo" = "Positive emotions",
                               "negemo" = "Negative emotions",
                               "tentat" = "Tentative words",
                               "Sixltr" = "More than six letters",
                               "we" = "First person plural pronouns",
                               "article" = "Articles",
                               "prep" = "Prepositions",
                               "anger" = "Anger words",
                               "swear" = "Swear words",
                               "cogproc" = "Cognitive processes",
                               "WPS" = "Words per Sentence",
                               "WC" = "Total Word Count",
                               "FK" = "Flesh-Kincaid Grade Level")

write_rds(fem_mac_df, "data/fem_mac_df.rds")

# Labour SL LIWC ----------------------------------------------------------

fem_mac_df_sl <- tibble::tibble(
  word_type = fem_mac,
  short_list = c(1:length(fem_mac)),
  short_list_sd = c(1:length(fem_mac)),
  non_short_list = c(1:length(fem_mac)),
  non_short_list_sd = c(1:length(fem_mac)),
  cohen_d = c(1:length(fem_mac)),
  magnitude = c(1:length(fem_mac)))

lab_liwc_women$short_list <- as.factor(lab_liwc_women$short_list)

for (i in fem_mac) {
  d <- (cohen.d(lab_liwc_women[[i]], lab_liwc_women$short_list, na.rm = TRUE,
                noncentral = FALSE, pooled = TRUE))
  fem_mac_df_sl$short_list[fem_mac_df_sl$word_type==i] <-
    mean(lab_liwc_women[lab_liwc_women$short_list == TRUE, i], na.rm = TRUE)
  fem_mac_df_sl$non_short_list[fem_mac_df_sl$word_type==i] <- 
    mean(lab_liwc_women[lab_liwc_women$short_list == FALSE, i], na.rm = TRUE)
  fem_mac_df_sl$short_list_sd[fem_mac_df_sl$word_type==i]  <- 
    sd(lab_liwc_women[lab_liwc_women$short_list == TRUE, i], na.rm = TRUE)
  fem_mac_df_sl$non_short_list_sd[fem_mac_df_sl$word_type==i] <- 
    sd(lab_liwc_women[lab_liwc_women$short_list == FALSE, i], na.rm = TRUE)
  fem_mac_df_sl$cohen_d[fem_mac_df_sl$word_type == i] <- 
    d$estimate[[1]]
  fem_mac_df_sl$magnitude[fem_mac_df_sl$word_type == i] <-
    as.character(d$magnitude[[1]])
}

fem_mac_df_sl$word_type <- recode(fem_mac_df_sl$word_type,
                                  "pronoun" = "All Pronouns",
                                  "i" = "First person singular pronouns",
                                  "verb" = "Verbs",
                                  "auxverb" = "Auxiliary verbs",
                                  "social" = "Social processes ",
                                  "posemo" = "Positive emotions",
                                  "negemo" = "Negative emotions",
                                  "tentat" = "Tentative words",
                                  "Sixltr" = "More than six letters",
                                  "we" = "First person plural pronouns",
                                  "article" = "Articles",
                                  "prep" = "Prepositions",
                                  "anger" = "Anger words",
                                  "swear" = "Swear words",
                                  "cogproc" = "Cognitive processes",
                                  "WPS" = "Words per Sentence",
                                  "WC" = "Total Word Count",
                                  "FK" = "Flesh-Kincaid Grade Level")

write_rds(fem_mac_df_sl, "data/fem_mac_df_sl.rds")

# Tory LIWC ---------------------------------------------------------------

## same as above, but this time Conservative vs Labour
library(readr)
library(dplyr)
library(quanteda)
library(readxl)
library(lubridate)
library(stringi)

all_speech <- read_rds("data/senti_df2.rds")

all_speech$eo_id <- rownames(all_speech)

## Binned into quarters of a year
all_speech$y_since_start <- round(time_length(all_speech$speech_date -
                                                as.Date(all_speech$house_start_date),
                                              unit = "years")* 4)/4

con_speech <- filter(all_speech, 
                     party_group == "Conservative", 
                     as_speaker == FALSE, house_start_date >= "1997-05-01", 
                     speech_date >= "1997-05-01", speech_date < "2017-06-08",
                     word_count > 0)

rm(all_speech)

con_speech$speech <- gsub( " *\\(.*?\\)*", "", con_speech$speech)

con_speech$speech <- gsub( " *\\[.*?\\]*", "", con_speech$speech)

con_speech$speech <- gsub( "^c\\(", "", con_speech$speech)

con_speech$speech <- gsub( "\\)$", "", con_speech$speech)

write_rds(con_speech, "data/con_speech.rds")

con_corpus <- corpus(con_speech, docid_field = "eo_id", text_field = "speech")

write_rds(con_corpus, "data/con_corpus.rds")

library(readr)
library(dplyr)
library(tidyr)
library(effsize)
library(stringi)
library(quanteda)
library(quanteda.dictionaries)

liwc15_dict <- dictionary(file = "dict/LIWC2015_English_Flat.dic",
                          format = "LIWC")

con_corpus <- read_rds("data/con_corpus.rds")

con_speech <- read_rds("data/con_speech.rds")

con_liwc <- liwcalike(con_corpus, 
                      dictionary = liwc15_dict, 
                      verbose = TRUE) %>%
  left_join(con_speech, by = c("docname" = "eo_id"))

con_liwc$WC <- stri_count_boundaries(con_liwc$speech,
                                     type="word", skip_word_none=FALSE)

con_liwc$WPS <- con_liwc$WC/stri_count_boundaries(con_liwc$speech,
                                                  type="sentence", skip_word_none=FALSE)

con_liwc[["Sixltr"]] <- sapply(
  tokens(texts(con_corpus), remove_hyphens = TRUE),
  function(y) sum(stri_length(y) > 6)) / con_liwc[["WC"]] * 100

con_liwc$FK <- case_when(con_liwc$WC >= 5 ~ 
                           0.39 * con_liwc$WPS + 
                           11.8 * quanteda::nsyllable(con_liwc$speech)/
                           con_liwc$WC - 15.59, TRUE ~ NA_real_)

#con_liwc$FK2 <- if_else(con_liwc$WC < 5, NA_real_, con_liwc$FK2)

con_liwc <- con_liwc %>% select(docname, Segment, WC, WPS, FK, everything())

#con_liwc <- read_rds("data/con_liwc.rds")

write_rds(con_liwc, "data/con_liwc.rds")



# Other LIWC --------------------------------------------------------------


## same as above, but this time Conservative vs Labour
library(readr)
library(dplyr)
library(quanteda)
library(readxl)
library(lubridate)
library(stringi)

all_speech <- read_rds("data/senti_df2.rds")

all_speech$eo_id <- rownames(all_speech)

## Binned into quarters of a year
all_speech$y_since_start <- round(time_length(all_speech$speech_date -
                                                as.Date(all_speech$house_start_date),
                                              unit = "years")* 4)/4

all_speech$party <- if_else(all_speech$mnis_id == 4409, 
                            "Labour",
                            all_speech$party)

other_speech <- filter(all_speech, 
                       !(party %in% c("Labour", "Conservative", 
                                      "Labour (Co-op)")), 
                       house_start_date >= "1997-05-01", as_speaker==FALSE,
                       speech_date >= "1997-05-01", 
                       speech_date < "2017-06-08", word_count > 0)

rm(all_speech)

other_speech$speech <- gsub( " *\\(.*?\\)*", "", other_speech$speech)

other_speech$speech <- gsub( " *\\[.*?\\]*", "", other_speech$speech)

other_speech$speech <- gsub( "^c\\(", "", other_speech$speech)

other_speech$speech <- gsub( "\\)$", "", other_speech$speech)

write_rds(other_speech, "data/other_speech.rds")

other_corpus <- corpus(other_speech, docid_field = "eo_id",
                       text_field = "speech")

write_rds(other_corpus, "data/other_corpus.rds")


library(readr)
library(dplyr)
library(tidyr)
library(effsize)
library(stringi)
library(quanteda)
library(quanteda.dictionaries)

liwc15_dict <- dictionary(file = "dict/LIWC2015_English_Flat.dic",
                          format = "LIWC")

other_corpus <- read_rds("data/other_corpus.rds")

other_speech <- read_rds("data/other_speech.rds")

other_liwc <- liwcalike(other_corpus, 
                        dictionary = liwc15_dict, 
                        verbose = TRUE) %>%
  left_join(other_speech, by = c("docname" = "eo_id"))

other_liwc$WC <- stri_count_boundaries(other_liwc$speech,
                                       type="word", skip_word_none=FALSE)

other_liwc[["Sixltr"]] <- sapply(
  tokens(texts(other_corpus), remove_hyphens = TRUE),
  function(y) sum(stri_length(y) > 6)) / other_liwc[["WC"]] * 100

# lab_con_liwc$FK <-  textstat_readability(texts(lab_corpus), "Flesch.Kincaid")
# 
# lab_con_liwc$FK <- lab_con_liwc$FK$Flesch.Kincaid
# 
# lab_con_liwc$FK <- if_else(lab_con_liwc$WC < 5, NA_real_, lab_con_liwc$FK)

other_liwc$WPS <- other_liwc$WC/stri_count_boundaries(other_liwc$speech,
                                                      type="sentence", skip_word_none=FALSE)

other_liwc$FK <- case_when(other_liwc$WC >= 5 ~ 
                             0.39 * other_liwc$WPS + 
                             11.8 * quanteda::nsyllable(other_liwc$speech)/
                             other_liwc$WC - 15.59, TRUE ~ NA_real_)

#lab_con_liwc$FK2 <- if_else(lab_con_liwc$WC < 5, NA_real_, lab_con_liwc$FK2)

other_liwc <- other_liwc %>% select(docname, Segment, WC, WPS, FK, everything())

#lab_con_liwc <- read_rds("data/lab_con_liwc.rds")

write_rds(other_liwc, "data/other_liwc.rds")



# Lab Con LIWC ------------------------------------------------------------

con_liwc <- read_rds("data/con_liwc.rds")

lab_liwc <- read_rds("data/lab_liwc.rds")

lab_con_liwc <- bind_rows(con_liwc, lab_liwc)

lab_con_df <- tibble::tibble(
  word_type = fem_mac,
  labour = c(1:length(fem_mac)),
  labour_sd = c(1:length(fem_mac)),
  tory = c(1:length(fem_mac)),
  tory_sd = c(1:length(fem_mac)),
  cohen_d = c(1:length(fem_mac)),
  magnitude = c(1:length(fem_mac)))

for (i in fem_mac) {
  d <- (cohen.d(lab_con_liwc[[i]], lab_con_liwc$party_group, na.rm = TRUE,
                noncentral = FALSE, pooled = TRUE))
  lab_con_df$labour[lab_con_df$word_type==i] <- mean(lab_con_liwc[lab_con_liwc$party_group == "Labour", i], na.rm = TRUE)
  lab_con_df$tory[lab_con_df$word_type==i] <- mean(lab_con_liwc[lab_con_liwc$party_group == "Conservative", i], na.rm = TRUE)
  lab_con_df$labour_sd[lab_con_df$word_type==i] <- sd(lab_con_liwc[lab_con_liwc$party_group == "Labour", i], na.rm = TRUE)
  lab_con_df$tory_sd[lab_con_df$word_type==i] <- sd(lab_con_liwc[lab_con_liwc$party_group == "Conservative", i], na.rm = TRUE)
  lab_con_df$cohen_d[lab_con_df$word_type==i] <- (d$estimate[[1]])
  lab_con_df$magnitude[lab_con_df$word_type==i] <- as.character(d$magnitude[[1]])
}

#lab_con_df

lab_con_df$word_type <- recode(lab_con_df$word_type,
                               "pronoun" = "All Pronouns",
                               "i" = "First person singular pronouns",
                               "verb" = "Verbs",
                               "auxverb" = "Auxiliary verbs",
                               "social" = "Social processes ",
                               "posemo" = "Positive emotions",
                               "negemo" = "Negative emotions",
                               "tentat" = "Tentative words",
                               "Sixltr" = "More than six letters",
                               "we" = "First person plural pronouns",
                               "article" = "Articles",
                               "prep" = "Prepositions",
                               "anger" = "Anger words",
                               "swear" = "Swear words",
                               "cogproc" = "Cognitive processes",
                               "WPS" = "Words per Sentence",
                               "WC" = "Total Word Count",
                               "FK" = "Flesh-Kincaid Grade Level")

write_rds(lab_con_df, "data/lab_con_df.rds")

# All Parties Gender Diff -------------------------------------------------

library(readr)
library(dplyr)
library(effsize)

other_liwc <- read_rds("data/other_liwc.rds")

lab_liwc <- read_rds("data/lab_liwc.rds")

con_liwc <- read_rds("data/con_liwc.rds")

all_liwc <- bind_rows(other_liwc, con_liwc, lab_liwc)

all_liwc$gender <- case_when(all_liwc$gender == "F" ~ "Female",
                             all_liwc$gender == "M" ~ "Male",
                             TRUE ~ all_liwc$gender)

fem_mac <- c("pronoun", "i", "we", "verb", "auxverb", "social", "posemo", 
             "negemo", "tentat", "Sixltr",  "article", "prep",
             "anger", "swear", "cogproc", "WPS", "WC", "FK")

all_party_gender_df <- tibble::tibble(
  word_type = fem_mac,
  women = c(1:length(fem_mac)),
  women_sd = c(1:length(fem_mac)),
  men = c(1:length(fem_mac)),
  men_sd = c(1:length(fem_mac)),
  cohen_d = c(1:length(fem_mac)),
  magnitude = c(1:length(fem_mac)))

for (i in fem_mac) {
  d <- (cohen.d(all_liwc[[i]], all_liwc$gender, na.rm = TRUE,
                noncentral = FALSE, pooled = TRUE))
  all_party_gender_df$women[all_party_gender_df$word_type==i] <- mean(all_liwc[all_liwc$gender == "Female", i], na.rm = TRUE)
  all_party_gender_df$men[all_party_gender_df$word_type==i] <- mean(all_liwc[all_liwc$gender == "Male", i], na.rm = TRUE)
  all_party_gender_df$women_sd[all_party_gender_df$word_type==i] <- sd(all_liwc[all_liwc$gender == "Female", i], na.rm = TRUE)
  all_party_gender_df$men_sd[all_party_gender_df$word_type==i] <- sd(all_liwc[all_liwc$gender == "Male", i], na.rm = TRUE)
  all_party_gender_df$cohen_d[all_party_gender_df$word_type==i] <- (d$estimate[[1]])
  all_party_gender_df$magnitude[all_party_gender_df$word_type==i] <- as.character(d$magnitude[[1]])
}

all_party_gender_df

all_party_gender_df$word_type <- recode(all_party_gender_df$word_type,
                                        "pronoun" = "All Pronouns",
                                        "i" = "First person singular pronouns",
                                        "verb" = "Verbs",
                                        "auxverb" = "Auxiliary verbs",
                                        "social" = "Social processes ",
                                        "posemo" = "Positive emotions",
                                        "negemo" = "Negative emotions",
                                        "tentat" = "Tentative words",
                                        "Sixltr" = "More than six letters",
                                        "we" = "First person plural pronouns",
                                        "article" = "Articles",
                                        "prep" = "Prepositions",
                                        "anger" = "Anger words",
                                        "swear" = "Swear words",
                                        "cogproc" = "Cognitive processes",
                                        "WPS" = "Words per Sentence",
                                        "WC" = "Total Word Count",
                                        "FK" = "Flesh-Kincaid Grade Level")

write_rds(all_party_gender_df, "data/all_party_gender_df.rds")

