# Load library, set working directory, load data
setwd("C:/Users/mcarozzo/Desktop/")
sleep <- read.csv("sleep.csv")
# Source: https://sleepfoundation.org/media-center/press-release/national-sleep-foundation-recommends-new-sleep-times
library(ggplot2)
library(reshape2)
source("z_theme.r")

ggplot(sleep)+
  geom_ribbon(aes(x=age,ymin=min,ymax=max,fill=Recommendation),alpha=.5)+
  ylab("Hours of sleep")+
  xlab("Subject Age (Years)")+
  ggtitle("National Sleep Foundation's Sleep Duration Recommendations")+
  scale_y_continuous(limits=c(0,20))+
  z_theme()
  