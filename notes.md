

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