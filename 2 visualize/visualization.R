# install.packages("CGPfunctions")
# install.packages("ggcorrplot")

library(ggplot2)
library(CGPfunctions)
library(ggcorrplot)

region <- read.csv("./data/region.csv", header=T)
brfss <- read.csv("./data/brfss.csv", header=T)
checkup <- read.csv("./data/checkup.csv", header=T)

names(brfss)

PlotXTabs2(brfss, x=SEX, y=HEARTDISEASE, 
           results.subtitle=F,
           labels.legend=c("n", "y"))

brfss$DEAF <- factor(brfss$DEAF)
brfss$HEARTDISEASE <- factor(brfss$HEARTDISEASE)

ggplot(brfss, aes(x=DEAF, fill=HEARTDISEASE)) + 
  geom_bar(position="fill") +
  scale_x_discrete(labels=c("0"="no", "1"="yes"))

hist(brfss$HEIGHT)

