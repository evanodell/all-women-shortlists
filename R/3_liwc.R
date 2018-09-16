
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
```


```{r tory-labour-liwc, eval=FALSE, include=FALSE}
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




# All Parties Gender Diff -------------------------------------------------

library(readr)
library(dplyr)
library(effsize)

other_liwc <- read_rds("data/other_liwc.rds")

lab_liwc <- read_rds("data/lab_liwc.rds")

con_liwc <- read_rds("data/con_liwc.rds")

all_liwc <- bind_rows(other_liwc, con_liwc, lab_liwc)

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

#all_party_gender_df

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

