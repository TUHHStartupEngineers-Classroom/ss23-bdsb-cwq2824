
# Data Acquisition challenge solutions

# My first post

#Last compiled: `r Sys.Date()`

#```{r}
library(tidyverse)
library(httr)
library(jsonlite)
library(dplyr)
res = GET("https://api.wazirx.com/sapi/v1/tickers/24hr")
rawToChar(res$content)
data = fromJSON(rawToChar(res$content))
names(data)
data$symbol
table <- res %>% 
  .$content %>% 
  rawToChar() %>% 
  fromJSON()
table
``
#The Second step

