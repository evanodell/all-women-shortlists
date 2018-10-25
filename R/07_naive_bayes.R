
# naive-bayes-gender ------------------------------------------------------


library(quanteda)
library(quanteda.corpora)
library(caret)
library(readr)

lab_corpus <- read_rds("data/lab_corpus.rds")

set.seed(42)
id_train <- sample(1:262071, 104828, replace = FALSE) ## 40% in training
#head(id_train, 10)

docvars(lab_corpus, "id_numeric") <- 1:ndoc(lab_corpus)

# get training set
training_dfm <- corpus_subset(lab_corpus, id_numeric %in% id_train) %>%
  dfm(stem = TRUE)

# get test set (documents not in id_train)
test_dfm <- corpus_subset(lab_corpus, !id_numeric %in% id_train) %>%
  dfm(stem = TRUE)

nb <- textmodel_nb(training_dfm, docvars(training_dfm, "gender"),
                   prior = "docfreq")
#summary(nb)

test_dfm <- dfm_select(test_dfm, training_dfm)

actual_class <- docvars(test_dfm, "gender")
predicted_class <- predict(nb, test_dfm)
class_table <- table(actual_class, predicted_class)
class_table

gender_accuracy <- confusionMatrix(class_table, mode = "everything")
gender_accuracy$overall[[1]]


# naive-bayes-shortlist ------------------------------------------------------



### Shortlist classification
lab_corpus_fem <- corpus_subset(lab_corpus, gender=="Female")

set.seed(42)
id_train <- sample(1:84572, 33829, replace = FALSE) ## 40% in training
head(id_train, 10)

docvars(lab_corpus_fem, "id_numeric") <- 1:ndoc(lab_corpus_fem)

# get training set
training_dfm <- corpus_subset(lab_corpus_fem, id_numeric %in% id_train) %>%
  dfm(stem = TRUE)

# get test set (documents not in id_train)
test_dfm <- corpus_subset(lab_corpus_fem, !id_numeric %in% id_train) %>%
  dfm(stem = TRUE)

nb_fem <- textmodel_nb(training_dfm, docvars(training_dfm, "short_list"),
                       prior = "docfreq")
summary(nb_fem)

test_dfm <- dfm_select(test_dfm, training_dfm)

actual_class <- docvars(test_dfm, "short_list")
predicted_class <- predict(nb_fem, test_dfm)
class_table <- table(actual_class, predicted_class)
class_table

sl_accuracy <- confusionMatrix(class_table, mode = "sens_spec")
sl_accuracy$overall[[1]]


# naive-bayes-lab-tory ------------------------------------------------------



library(quanteda)
library(quanteda.corpora)
library(caret)
library(readr)
library(dplyr)

all_speech <- read_rds("data/senti_df2.rds")

lab_con_speech <- all_speech %>% 
  filter(party_group %in% c("Labour", "Conservative"),
         as_speaker == FALSE, house_start_date >= "1997-05-01",
         speech_date >= "1997-05-01", speech_date < "2017-06-08")

rm(all_speech)

lab_con_corpus <- corpus(lab_con_speech, 
                         docid_field = "eo_id", text_field = "speech")

set.seed(42)
id_train <- sample(1:547233, (547233*0.4), replace = FALSE) ## 40% in training
#head(id_train, 10)

docvars(lab_con_corpus, "id_numeric") <- 1:ndoc(lab_con_corpus)

# get training set
training_dfm <- corpus_subset(lab_con_corpus, id_numeric %in% id_train) %>%
  dfm(stem = TRUE)

# get test set (documents not in id_train)
test_dfm <- corpus_subset(lab_con_corpus, !id_numeric %in% id_train) %>%
  dfm(stem = TRUE)

nb <- textmodel_nb(training_dfm, docvars(training_dfm, "gender"),
                   prior = "docfreq")
#summary(nb)

test_dfm <- dfm_select(test_dfm, training_dfm)

actual_class <- docvars(test_dfm, "gender")
predicted_class <- predict(nb, test_dfm)
class_table <- table(actual_class, predicted_class)
class_table

party_accuracy <- confusionMatrix(class_table, mode = "everything")
party_accuracy$overall[[1]]
round(party_accuracy$overall[[1]], 4)
```
