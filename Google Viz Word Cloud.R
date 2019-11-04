library(googleVis)
library(ggplot2)
library(funModeling)
library(gganimate)
library(tidyverse)

p=read.csv("Review.csv")

d1 <- p
p$Phrase.style <- ifelse(p$Sentiment >= 7, "green", 
                         ifelse(p$Sentiment <= 3, "red", "white"))

wt2 <- gvisWordTree(p, textvar = "Review", 
                    stylevar = "Phrase.style",
                    options = list(fontName = "Times-Roman",
                                   wordtree = "{word: 'Game'}",
                                   backgroundColor = "#91a3b0"))
plot(wt2)


