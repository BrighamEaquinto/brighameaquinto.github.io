

Options:


``` r 
#| eval: false
library(tidyverse)
```


Can't enter or color headers using Markdown, must use CSS instead: 
`<h6 align="center"; style="color:#808080"> Base R </h6>`


## Ideas 

- Have a notes to instructors page or part of the repo
- have a page just for the interface of RStudio
  - hot keys
  - shortcuts
  - such and such
- have a page for R/Python equivalents
- have a page for other generally useful things
    - setting up R in VSCode: https://github.com/REditorSupport/vscode-R or https://marketplace.visualstudio.com/items?itemName=REditorSupport.r or https://github.com/REditorSupport/vscode-R/wiki/Installation:-Windows
- how can I use the wiki tab on the github page? What is the proper usage of it?


Others: 
- commenting code 
- assignment operator vs equal sign
- pipe operator %>%
- filtering operators (==, %in%, |, &, !=)
- c(vector) and list conversation


Use this for advance select statements: https://dplyr.tidyverse.org/reference/select.html




n_distinct(dat$region)
count(dat$region)
table(dat$region)

dat <- read_csv("https://covid.ourworldindata.org/data/owid-covid-data.csv")
# object_size(dat)
view(dat)

dat <- read_csv("datasets/insurance.csv")

n_distinct(dat$region)
count(dat$region)
table(dat$region) 





R Scipts vs. RMDs
The data science process (flow chart of start to finish and where most time is spent)

Lesson 1: Introduction
  - Installation
  - the RStudio interface
  - an introduction to Data Science. Give the full scope of data science.
  - what about sending the newbies to this page during future weeks? Put a video there? 
Lesson 2: Readr
  - reading in data from CSV
  - reading in data from URL
  - writing data to CSV
Lesson 3: Wrangling Data
  - need another day on this
Lesson 4: Grouping, Summarising, Arranging
Lesson 5: Graphing 1/2
Lesson 6: Graphing 2/2


mean(iris)

