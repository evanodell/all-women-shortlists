#devtools::install_github("mikaelpoul/tidystm", dependencies = TRUE)
library(tidystm)
library(ggplot2)
library(dplyr)
effect <-  extract.estimateEffect(x = prep_k0,
                                  covariate = "gender_sl",
                                  method = "pointestimate",
                                  model = topic_model_k0)

effect$label <- gsub("\\(Covariate Level: Male_FALSE\\)", "", effect$label)

effect <- effect %>% mutate(label = recode(label, 
                                           "Topic 1" = "(1) Employment & unions",
                                           "Topic 2" = "(2) Legal system",
                                           "Topic 3" = "(3) Roads",
                                           "Topic 4" = "(4) Housing",
                                           "Topic 5" = "(5) Police, firefighters & prison",
                                           "Topic 6" = "(6) Northern Ireland",
                                           "Topic 7" = "(7) Committee",
                                           "Topic 8" = "(8) Schools",
                                           "Topic 9" = "(9) Energy & climate change",
                                           "Topic 10" = "(10) Defence",
                                           "Topic 11" = "(11) Parliament",
                                           "Topic 12" = "(12) International politics",
                                           "Topic 13" = "(13) Ministers",
                                           "Topic 14" = "(14) Policy impact",
                                           "Topic 15" = "(15) Gender",
                                           "Topic 16" = "(16) Regional development",
                                           "Topic 17" = "(17) Communications",
                                           "Topic 18" = "(18) Immigration",
                                           "Topic 19" = "(19) Health system",
                                           "Topic 20" = "(20) International development",
                                           "Topic 21" = "(21) Benefits & disability",
                                           "Topic 22" = "(22) Sport & culture",
                                           "Topic 23" = "(23) History",
                                           "Topic 24" = "(24) Higher education & skills",
                                           "Topic 25" = "(25) Concurring point",
                                           "Topic 26" = "(26) Pensions",
                                           "Topic 27" = "(27) Points of order",
                                           "Topic 28" = "(28) Issues",
                                           "Topic 29" = "(29) Constituencies",
                                           "Topic 30" = "(30) Ethnic groups & racism",
                                           "Topic 31" = "(31) Amendments",
                                           "Topic 32" = "(32) Reports",
                                           "Topic 33" = "(33) People",
                                           "Topic 34" = "(34) Wales & Scotland",
                                           "Topic 35" = "(35) Alcohol & tobacco",
                                           "Topic 36" = "(36) Place names",
                                           "Topic 37" = "(37) Budget",
                                           "Topic 38" = "(38) Tax",
                                           "Topic 39" = "(39) Private companies",
                                           "Topic 40" = "(40) Environment & fishing",
                                           "Topic 41" = "(41) Crime",
                                           "Topic 42" = "(42) Bills",
                                           "Topic 43" = "(43) Children",
                                           "Topic 44" = "(44) Utilities & PFI",
                                           "Topic 45" = "(45) Middle East",
                                           "Topic 46" = "(46) Local authorities",
                                           "Topic 47" = "(47) Elections",
                                           "Topic 48" = "(48) Debate",
                                           "Topic 49" = "(49) Transport",
                                           "Topic 50" = "(50) Questions",
                                           "Topic 51" = "(51) Families",
                                           "Topic 52" = "(52) Health research",
                                           "Topic 53" = "(53) Dispatch box",
                                           "Topic 54" = "(54) Parties",
                                           "Topic 55" = "(55) Statements",
                                           "Topic 56" = "(56) European Union",
                                           "Topic 57" = "(57) Locations",
                                           "Topic 58" = "(58) Jobs & manufacturing",
                                           "Topic 59" = "(59) Small business",
                                           "Topic 60" = "(60) Agreement & disagreement",
                                           "Topic 61" = "(61) Voluntary sector",
                                           "Topic 62" = "(62) Comments",
                                           "Topic 63" = "(63) Social care",
                                           "Topic 64" = "(64) Time",
                                           "Topic 65" = "(65) Media & animals",
                                           "Topic 66" = "(66) Other"))

write_rds(effect, "data/effect.rds")


t_list <- c(1:66)

for (i in t_list){
  p_effect <- ggplot(effect %>% filter(topic == i),
                     aes(y = estimate, x = covariate.value,
                         fill = covariate.value)) + 
    geom_bar(stat = "identity", position = position_dodge()) +
    geom_errorbar(aes(ymin = ci.lower, ymax = ci.upper), 
                  color = "black", width = 0.3, position=position_dodge(.9)) + 
    scale_y_continuous(labels = scales::percent) + 
    scale_fill_manual(values = c("#a06dba", "#7aa457", "#cb6a49"),
                      labels = c("Men", "Non-AWS", "AWS"),
                      name = "") + 
    scale_x_discrete(labels = c("Men", "Non-AWS", "AWS")) + 
    labs(x = "",
         y = "Expected Topic Proportion",
         title = effect$label[effect$topic==i][[1]]) +
    theme(legend.position = "bottom")
  
  ggsave(paste0("topic_", i, "_bar.svg"), plot = p_effect, 
         path="plots/ee-plots", device = "svg", units = "cm",
         width = 15, height = 20)
}

p_effect <- ggplot(effect, aes(y = estimate, x = covariate.value,
                               fill = covariate.value)) + 
  geom_bar(stat = "identity", position = position_dodge()) +
  geom_errorbar(aes(ymin = ci.lower, ymax = ci.upper), 
                color = "black", width = 0.3, position=position_dodge(.9)) + 
  scale_y_continuous(labels = scales::percent) + 
  scale_fill_manual(values = c("#a06dba", "#7aa457", "#cb6a49"),
                    labels = c("Men", "Non-AWS", "AWS"),
                    name = "") + 
  scale_x_discrete(labels = c("Men", "Non-AWS", "AWS")) + 
  labs(x = "",
       y = "Expected Topic Proportion") +
  theme(legend.position = "bottom") + 
  facet_wrap(~topic, scales = "free_y", ncol=7)

#p_effect

ggsave("all_topics_bar.svg", plot = p_effect, 
       path="plots/ee-plots", device = "svg", units = "cm",
       width = 40, height = 80)
