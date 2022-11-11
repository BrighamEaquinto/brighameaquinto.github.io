library(tidyverse)

dat <- read_csv("C:/Users/Bethany/Downloads/Untitled spreadsheet - Sheet2.csv")

view(dat)

count(dat$Grade)

dat_plot <- dat %>% 
    group_by(Grade) %>% 
    summarise(Count = n()) %>%
    filter(!grepl("N/A until 12/22/2022", Grade)) %>% 
    mutate(Grade = fct_reorder(Grade, c("A", "A-", "B+", "B", "B-", "C+", "C", "D", "D-", "F", "P", "W")))

ggplot(dat_plot, aes(Grade, Count))+
    geom_col()+
    scale_y_continuous(
        breaks = c(0:14), 
        expand = c(0,0))
