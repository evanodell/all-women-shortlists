### Extracing post-1997 Labour speeches
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

all_speech$party_group <- if_else(all_speech$mnis_id == 4409, 
                                  "Labour",
                                  all_speech$party_group)

all_speech$party_group <- if_else(all_speech$party == "Independent", 
                                  "Other",
                                  all_speech$party_group)


all_speech$party_group <- case_when(all_speech$party == "Labour" ~ "Labour",
                                    all_speech$party == "Labour (Co-op)" ~ "Labour",
                                    all_speech$party == "Conservative" ~ "Conservative",
                                    all_speech$party == "Democratic Unionist Party" ~ "Other",
                                    TRUE ~ all_speech$party_group)

all_speech$gender <- case_when(all_speech$gender == "F" ~ "Female",
                               all_speech$gender == "M" ~ "Male",
                               TRUE ~ all_speech$gender)

all_women97_15 <- read_excel("list-of-mps.xlsx")

all_speech$short_list <- all_speech$mnis_id %in% all_women97_15$mnis

all_speech$speech <- gsub( " *\\(.*?\\)*", " ", all_speech$speech)

all_speech$speech <- gsub( " *\\[.*?\\]*", " ", all_speech$speech)

all_speech$speech <- gsub( "^c\\(", "", all_speech$speech)

all_speech$speech <- gsub( "^c \\(", "", all_speech$speech)

all_speech$speech <- gsub( "\\)$", "", all_speech$speech)

all_speech$word_count <- all_speech$speech %>%
  stri_replace_all_fixed("\n", " ") %>%
  stri_replace_all_fixed("\n", " ") %>%
  stri_replace_all_regex( "\\ n\\s", " ") %>% 
  stri_count_boundaries( type="word", 
                         skip_word_none=FALSE)


# all_speech$word_count <- stri_count_boundaries(all_speech$speech,
#                                               )

write_rds(all_speech, "data/all_speech.rds")

lab_speech <- all_speech %>% 
  filter(party == "Labour" | party == "Labour (Co-op)", as_speaker == FALSE,
         house_start_date >= "1997-05-01", 
         speech_date >= "1997-05-01",
         speech_date < "2017-06-08", word_count > 0)

## CHeck tracy brabin
library(fuzzyjoin)
lab_speech <- fuzzy_left_join(lab_speech, lab_fem_jobs,
                              by = c(
                                "mnis_id" = "member_id",
                                "speech_date" = "start_date",
                                "speech_date" = "end_date"
                              ),
                              match_fun = list(`==`, `>=`, `<`))

write_rds(lab_speech, "data/lab_speech.rds")

lab_corpus <- corpus(lab_speech, docid_field = "eo_id", text_field = "speech")

write_rds(lab_corpus, "data/lab_corpus.rds")

lab_nums <- lab_speech %>% group_by(gender, short_list, mnis_id) %>%
  tally() %>% ungroup() %>%
  group_by(short_list, gender) %>%
  summarise(distinct = n())

write_rds(lab_nums, "data/lab_nums.rds")

all_speech <- all_speech %>% 
  filter(as_speaker == FALSE,
         house_start_date >= "1997-05-01", speech_date >= "1997-05-01",
         speech_date < "2017-06-08", word_count > 0)

speech_sum_table1 <- all_speech %>%
  group_by(short_list, gender, party_group) %>%
  summarise(speeches = n(),
            words = sum(word_count)) 

# speech_sum_table1$gender <- case_when(speech_sum_table1$short_list==TRUE ~
#                                        "All Women Shortlists",
#                                      TRUE ~ speech_sum_table1$gender)
# 
# speech_sum_table1$gender <- case_when(speech_sum_table1$short_list==FALSE & 
#                                        speech_sum_table1$party_group=="Labour" & 
#                                        speech_sum_table1$gender=="Female" ~
#                                        "Non-All Women Shortlists",
#                                      TRUE ~ speech_sum_table1$gender )

speech_sum_table2 <- all_speech %>%
  group_by(party_group) %>%
  summarise(speeches = n(),
            words = sum(word_count)) 

speech_sum_table3 <- all_speech %>%
  summarise(speeches = n(),
            words = sum(word_count)) 

speech_sum_table4 <- all_speech %>%
  group_by(gender) %>%
  summarise(speeches = n(),
            words = sum(word_count)) 

speech_sum_table5 <- all_speech %>%
  filter(gender=="Female", party_group=="Labour") %>%
  group_by(party_group, gender) %>%
  summarise(speeches = n(),
            words = sum(word_count))

speech_sum_table <- bind_rows(speech_sum_table1, speech_sum_table2,
                              speech_sum_table3, speech_sum_table4,
                              speech_sum_table5)

speech_sum_table[is.na(speech_sum_table)] <- "All"

# speech_sum_table[10,]$gender <- "All"
# speech_sum_table[10,]$party_group <- "All"
# speech_sum_table[10,]$short_list <- "All"
# speech_sum_table[10,]$speeches <- sum(speech_sum_table$speeches[1:9])
# speech_sum_table[10,]$words <- sum(speech_sum_table$words[1:9])
# 
# speech_sum_table[11,]$gender <- "Female"
# speech_sum_table[11,]$party_group <- "Labour"
# speech_sum_table[11,]$short_list <- "Both"
# speech_sum_table[11,]$speeches <- sum(speech_sum_table$speeches[9], 
#                                       speech_sum_table$speeches[2])
# 
# speech_sum_table[11,]$words <- sum(speech_sum_table$words[9],
#                                    speech_sum_table$words[2])

write_rds(speech_sum_table, "data/speech_sum_table.rds")