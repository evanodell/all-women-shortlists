
lab_speech <- read_rds("lab_speech.rds")

x <- filter(topic_dt_k45, assigned_topic == "Topic23")

d <- x$eo_id

y <- lab_speech %>% filter(eo_id %in% d)

head(y$speech, 20)


z <- filter(topic_dt_k45, assigned_topic == "Topic30")

e <- x$eo_id

a <- lab_speech %>% filter(eo_id %in% e)

head(a$speech, 20)


x6 <- filter(topic_dt_k45, assigned_topic == "Topic6")

d6 <- x6$eo_id

y6 <- lab_speech %>% filter(eo_id %in% d6)

head(y6$speech, 20)


x45 <- filter(topic_dt_k45, assigned_topic == "Topic45")

d45 <- x45$eo_id

y45 <- lab_speech %>% filter(eo_id %in% d45)

head(y45$speech, 20)



x44 <- filter(topic_dt_k45, assigned_topic == "Topic44")

d44 <- x44$eo_id

y44 <- lab_speech %>% filter(eo_id %in% d44)

head(y44$speech, 20)
