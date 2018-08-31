getwd()
setwd('/Users/rc390/R')
statesInfo <- read.csv('stateData.csv')
statesInfo
str(statesInfo)
subset(statesInfo, state.region == 1)
statesInfo[statesInfo$state.region == 1, ]

reddit <- read.csv('reddit.csv')
reddit
View(reddit)
str(reddit)
table(reddit$employment.status)
summary(reddit)

install.packages('ggplot2', dependencies = T)
library(ggplot2)

levels(reddit$age.range)
qplot(data = reddit, x = age.range)

install.packages('devtools', dependencies = T)
library(devtools)
install_version("colorspace","1.2-4")