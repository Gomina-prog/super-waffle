#set up script
library(tidyverse)
library(palmerpenguins)
library(rmarkdown)
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }}

packageLoad('tidyverse')

# create a string of package names
packages <- c('tidyverse',
              'palmerpenguins',
              'rmarkdown', "ggthemes", "RColorBrewer","viridis", "ggdark","plotly","lterdatasampler","rstatix","lubridate","dataRetrieval", "httr", "jsonlite", "usethis")


# use the setupscrip function we created on those packages
packageLoad(packages)


