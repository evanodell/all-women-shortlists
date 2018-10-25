
library(listviewer)
library(httr)
library(dplyr)

gov <- GET("http://data.parliament.uk/membersdataplatform/services/mnis/Department/0/Government/All/", accept_json())

s <- mnis::tidy_bom(gov)

d <- jsonlite::fromJSON(s)

x <- d$Department$Posts$Post

post_names <- c()

for (i in 1:length( d$Department$Posts$Post$Name)) {
  
  post_names[i] <- d$Department$Posts$Post$Name[[i]]
  
}

for (i in 1:length(post_names)) {
  if (class(x$PostHolders$PostHolder[[i]])=="NULL") { 
  } else {
    
    x$PostHolders$PostHolder[[i]]$post_name <- post_names[i]
    x$PostHolders$PostHolder[[i]]$LayingMinisterName <- as.character(x$PostHolders$PostHolder[[i]]$LayingMinisterName)
    x$PostHolders$PostHolder[[i]]$LayingMinisterName <- NULL
    x$PostHolders$PostHolder[[i]]$Member$CurrentStatus <- NULL
    x$PostHolders$PostHolder[[i]]$Member$DateOfDeath <- NULL
    x$PostHolders$PostHolder[[i]]$Member$HouseEndDate <- NULL
    x$PostHolders$PostHolder[[i]]$HouseEndDate <- NULL
    x$PostHolders$PostHolder[[i]]$Member$Party <- x$PostHolders$PostHolder[[i]]$Member$Party$`#text`
    
    if (length(x$PostHolders$PostHolder[[i]]$EndDate) > 1) {
      x$PostHolders$PostHolder[[i]]$EndDate <- as.character(x$PostHolders$PostHolder[[i]]$EndDate[1])
    }
    
    
    x$PostHolders$PostHolder[[i]]$Member$LayingMinisterName <- NULL
    x$PostHolders$PostHolder[[i]]$Member$HouseEndDate <- NULL
    
    mem_df <- as.data.frame(x$PostHolders$PostHolder[[i]]$Member)
    
    x$PostHolders$PostHolder[[i]]$Member <- NULL
    
    mem_df <- lapply(mem_df, as.character)
    
    mem_df$LayingMinisterName <- NULL
    
    mem_df$HouseEndDate <- NULL
    
    x$PostHolders$PostHolder[[i]] <- bind_cols(as.data.frame(x$PostHolders$PostHolder[[i]]), mem_df)
  }
}

government_posts <- bind_rows(x$PostHolders$PostHolder)

names(government_posts) <- snakecase::to_snake_case(names(government_posts))

government_posts$member_id <- if_else(is.na(government_posts$member_id),
                                      government_posts$x_member_id,
                                      government_posts$member_id)

government_posts$type <- "Government"

government_posts$end_date <- if_else(
  government_posts$member_id=="439" & 
    government_posts$post_name=="Secretary of State for Education & skills", 
  "2006-05-05", government_posts$end_date)

library(listviewer)
library(httr)

opp <- GET("http://data.parliament.uk/membersdataplatform/services/mnis/Department/0/Opposition/All/", accept_json())

s <- mnis::tidy_bom(opp)

d <- jsonlite::fromJSON(s)

x <- d$Department$Posts$Post

post_names <- c()

for (i in 1:length( d$Department$Posts$Post$Name)) {
  
  post_names[i] <- d$Department$Posts$Post$Name[[i]]
  
}

for (i in 1:length(post_names)) {
  if (class(x$PostHolders$PostHolder[[i]])=="NULL") { 
  } else {
    
    x$PostHolders$PostHolder[[i]]$post_name <- post_names[i]
    x$PostHolders$PostHolder[[i]]$Member$CurrentStatus <- NULL
    x$PostHolders$PostHolder[[i]]$Member$DateOfDeath <- NULL
    x$PostHolders$PostHolder[[i]]$Member$HouseEndDate <- NULL
    x$PostHolders$PostHolder[[i]]$HouseEndDate <- NULL
    x$PostHolders$PostHolder[[i]]$Member$Party <- x$PostHolders$PostHolder[[i]]$Member$Party$`#text`
    # 
    for (j in 1:length(x$PostHolders$PostHolder[[i]]$EndDate[1])) {
      
      if (length(x$PostHolders$PostHolder[[i]]$EndDate[[j]]) > 1) {
        x$PostHolders$PostHolder[[i]]$EndDate[[j]] <- "1"
      }
      
      # x$PostHolders$PostHolder[[i]]$EndDate[[1]] <- x$PostHolders$PostHolder[[i]]$EndDate[[1]][[1]]
    }
    
    #  x$PostHolders$PostHolder[[i]]$EndDate <- as.character(x$PostHolders$PostHolder[[i]]$EndDate)
    
    x$PostHolders$PostHolder[[i]]$Member$LayingMinisterName <- NULL
    x$PostHolders$PostHolder[[i]]$Member$HouseEndDate <- NULL
    
    x$PostHolders$PostHolder[[i]]$Member$CurrentStatus <- NULL
    
    mem_df <- as.data.frame(x$PostHolders$PostHolder[[i]]$Member)
    
    x$PostHolders$PostHolder[[i]]$Member <- NULL
    
    mem_df$LayingMinisterName <- NULL
    mem_df$HouseEndDate <- NULL
    
    #mem_df <- lapply(mem_df, as.character)
    
    mem_df$HouseEndDate <- NULL
    mem_df$DateOfBirth <- NULL
    
    x$PostHolders$PostHolder[[i]] <- bind_cols(as.data.frame(x$PostHolders$PostHolder[[i]]), mem_df)
    
    if (!("EndDate..xsi.nil" %in% names(x$PostHolders$PostHolder[[i]]))) {
      
      x$PostHolders$PostHolder[[i]]$EndDate <- as.character(x$PostHolders$PostHolder[[i]]$EndDate)
    }
  }
  
  
}


non.null.list <- lapply(x$PostHolders$PostHolder, Filter, f = Negate(is.null))

oppo_posts <- bind_rows(non.null.list)

names(oppo_posts) <- snakecase::to_snake_case(names(oppo_posts))

oppo_posts$member_id <- if_else(is.na(oppo_posts$member_id),
                                oppo_posts$x_member_id,
                                oppo_posts$member_id)

oppo_posts$type <- "Opposition"


library(readxl)
library(dplyr)

all_jobs <- bind_rows(oppo_posts, government_posts)

summary(as.factor(all_jobs$gender))

lab_fem_jobs <- all_jobs %>% 
  filter(gender=="F", party %in% c("Labour (Co-op)", "Labour")) %>%
  select(start_date, end_date, member_id, post_name, display_as)

#all_women97_15 <- read_excel("list-of-mps.xlsx")

#lab_fem_jobs$short_list <- lab_fem_jobs$member_id %in% all_women97_15$mnis

lab_fem_jobs$end_date <- if_else(lab_fem_jobs$end_date == "list(`@xsi:nil` = \"true\", `@xmlns:xsi` = \"http://www.w3.org/2001/XMLSchema-instance\")",
                                 "NA", lab_fem_jobs$end_date)

lab_fem_jobs$end_date[lab_fem_jobs$end_date=="NA"] <- NA

lab_fem_jobs$end_date <- as.Date(lab_fem_jobs$end_date)

lab_fem_jobs$start_date <- as.Date(lab_fem_jobs$start_date)

## use interval from lubridate to include jobs


