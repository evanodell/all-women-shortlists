topic_model_k0 <- read_rds("data/topic_model_k0_m.rds")

prep_k0 <- read_rds("data/prep_k0_m.rds")

plot(prep_k0, "gender_sl", topics = 1)

effect_compare <- extract.estimateEffect(x = prep_k0,
                                         covariate = "gender_sl",
                                         model = topic_model_k0) %>%
  mutate(assigned_topic = recode(topic,
                                 "1" = "(1) Employment & unions",
                                 "2" = "(2) Legal system",
                                 "3" = "(3) Roads",
                                 "4" = "(4) Housing",
                                 "5" = "(5) Police, firefighters & prison",
                                 "6" = "(6) Northern Ireland",
                                 "7" = "(7) Committee",
                                 "8" = "(8) Schools",
                                 "9" = "(9) Energy & climate change",
                                 "10" = "(10) Defence",
                                 "11" = "(11) Parliament",
                                 "12" = "(12) International politics",
                                 "13" = "(13) Ministers",
                                 "14" = "(14) Policy impact",
                                 "15" = "(15) Gender",
                                 "16" = "(16) Regional development",
                                 "17" = "(17) Communications",
                                 "18" = "(18) Immigration",
                                 "19" = "(19) Health system",
                                 "20" = "(20) International development",
                                 "21" = "(21) Benefits & disability",
                                 "22" = "(22) Sport & culture",
                                 "23" = "(23) History",
                                 "24" = "(24) Higher education & skills",
                                 "25" = "(25) Concurring point",
                                 "26" = "(26) Pensions",
                                 "27" = "(27) Points of order",
                                 "28" = "(28) Issues",
                                 "29" = "(29) Constituencies",
                                 "30" = "(30) Ethnic groups & racism",
                                 "31" = "(31) Amendments",
                                 "32" = "(32) Reports",
                                 "33" = "(33) People",
                                 "34" = "(34) Wales & Scotland",
                                 "35" = "(35) Alcohol & tobacco",
                                 "36" = "(36) Place names",
                                 "37" = "(37) Budget",
                                 "38" = "(38) Tax",
                                 "39" = "(39) Private companies",
                                 "40" = "(40) Environment & fishing",
                                 "41" = "(41) Crime",
                                 "42" = "(42) Bills",
                                 "43" = "(43) Children",
                                 "44" = "(44) Utilities & PFI",
                                 "45" = "(45) Middle East",
                                 "46" = "(46) Local authorities",
                                 "47" = "(47) Elections",
                                 "48" = "(48) Debate",
                                 "49" = "(49) Transport",
                                 "50" = "(50) Questions",
                                 "51" = "(51) Families",
                                 "52" = "(52) Health research",
                                 "53" = "(53) Dispatch box",
                                 "54" = "(54) Parties",
                                 "55" = "(55) Statements",
                                 "56" = "(56) European Union",
                                 "57" = "(57) Locations",
                                 "58" = "(58) Jobs & manufacturing",
                                 "59" = "(59) Small business",
                                 "60" = "(60) Agreement & disagreement",
                                 "61" = "(61) Voluntary sector",
                                 "62" = "(62) Comments",
                                 "63" = "(63) Social care",
                                 "64" = "(64) Time",
                                 "65" = "(65) Media & animals",
                                 "66" = "(66) Other")) %>%
  select(-method, -covariate, -label, -ci.level)

t_list <- c(1:66)

for (i in t_list){
  
  p_effect <- ggplot(effect_compare %>% filter(topic == i),
                     aes(y = estimate, x = covariate.value,
                         color = covariate.value)) + 
    geom_errorbar(aes(ymin = ci.lower, ymax = ci.upper),
                  size = 0.5, width = 0.2) + 
    geom_point(size = 1, alpha = 0.8) + 
    scale_y_continuous(labels = scales::percent) + 
    scale_colour_manual(values = c("#cb6a49", "#7aa457", "#a06dba" ),
                      labels = c("Men", "Non-AWS", "AWS"),
                      name = "") + 
    scale_x_discrete(labels = c("Men", "Non-AWS", "AWS")) +
    coord_flip() + 
    labs(x = "",
         y = "Expected Topic Proportion",
         title = effect_compare$assigned_topic[effect_compare$topic==i][[1]]) +
    theme(legend.position = "none")
  
  ggsave(paste0("topic_", i, ".svg"), plot = p_effect, 
         path="plots/compare-plots", device = "svg", units = "cm",
         width = 15, height = 12)
}