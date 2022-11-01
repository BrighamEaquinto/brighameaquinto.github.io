library(tidyverse)

dat <- read_csv("C:/Users/bdeaquinto/Downloads/grades.csv")
view(dat)

is_math = c("FDMAT108", "MATH101")
is_stats = c("MATH221A", "MATH325")
is_major = c("CIT111", "CIT225")
is_general_ed = c("FDAMF101", "FDENG101")

dat1 <- dat %>% 
select(! c(`Course Program`, `Catalog`, `Grade Type`)) %>% 
  filter(!str_starts(Grade, "N/A")) %>% 
  mutate(
    Grade = fct_relevel(Grade, c("A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F", "P", "W")), 
    # Grade = fct_reorder(Grade, c("A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F", "P", "W")), 
    Semester = fct_relevel(Semester, "WI19", "SP19", "FA19", "WI20", "SP20", "FA20", "WI21", "SP21", "FA21", "WI22", "SP22", "FA22"), 
    # Semester = fct_reorder(Semester, "WI19", "SP19", "FA19", "WI20", "SP20", "FA20", "WI21", "SP21", "FA21", "WI22", "SP22", "FA22"), 
    `Grade Points` = case_when(
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
      Grade == "NR" ~ NA_real_), 
    Course = str_replace(Course, "-\\d\\d", ""), 
    Course = str_replace(Course, "\\W", ""), 
    is_math = case_when(Course %in% is_math ~ 1, TRUE ~ 0),
    is_stats = case_when(Course %in% is_stats ~ 1, TRUE ~ 0), 
    is_major = case_when(Course %in% is_major ~ 1, TRUE ~ 0), 
    is_general_ed = case_when(Course %in% is_general_ed ~ 1, TRUE ~ 0)
)

# now ask how they determine which courses go into stats and which go into each bin

view(dat1)

ggplot(data = dat1, mapping = aes(Grade))+ 
  geom_bar()

dat1 %>% 
  filter(!is.na(gp)) %>% 
  summarise(
    tgp = sum(gp), 
    tc = sum(Credits), 
    tgp/tc)
