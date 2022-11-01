library(tidyverse)
dat <- read_csv("C:/Users/bdeaquinto/Downloads/grades.csv")

view(dat)

dat1 <- dat %>% 
  filter(!str_starts(Grade, "N/A")) %>% 
  mutate(
    Grade = fct_relevel(Grade, c("A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F", "P", "W")), 
    gp = case_when(
      Grade == "A" ~ 4,
      Grade == "A-" ~ 3.7,
      Grade == "B+" ~ 3.4,
      Grade == "B" ~ 3,
      Grade == "B-" ~ 2.7,
      Grade == "C+" ~ 2.4,
      Grade == "C" ~ 2,
      Grade == "C-" ~ 1.7,
      Grade == "D+" ~ 0.4,
      Grade == "D" ~ 1,
      Grade == "D-" ~ 0.7,
      Grade == "F" ~ 0,
      Grade == "UW" ~ 0,
      Grade == "P" ~ NA_real_,
      Grade == "W" ~ NA_real_, 
      Grade == "I" ~ NA_real_,
      Grade == "T" ~ NA_real_,
      Grade == "NR" ~ NA_real_
      ))

view(dat1)

ggplot(data = dat1, mapping = aes(Grade))+ 
  geom_bar()
