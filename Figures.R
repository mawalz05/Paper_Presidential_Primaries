library(ggplot2)
library(dplyr)
library(tidyr)
library(ggridges)
library(stats)

#############Figure 1: Spatial Density Plots#####
x = c(-1,-0.9,-0.8,-0.6,-0.5,-0.4,-0.3,-0.2,-0.1,0,0.1,0.2,0.3)
y = c(0.2,0.5,0.4,0.3,0.4,0.2,0.1,0.1,0.1,0,0,0,0)

caucus = cbind(x,y)
caucus = as.data.frame(caucus)

#Import dataset with constructed distributions
elections = read.csv("https://raw.githubusercontent.com/mawalz05/Paper_Presidential_Primaries/master/fakedata.csv")

elections2 = gather(elections, type, Dimension)

ggplot(elections2, aes(x = Dimension, y = type)) + 
  geom_density_ridges(quantile_lines = TRUE, quantiles = 2, scale=1) +
  geom_vline(xintercept = 0, linetype = "dotted") + theme_ridges() +
  xlim(-1.0,1.0) + theme(axis.title.y = element_blank()) + xlab("Left-Right Dimension")
#####################################################

#Figure 2: Hypothetical Voter Distributions
conservative = rnorm(100000, mean = 0.2, sd = .4)
liberal = rnorm(100000, mean = -0.2, sd = .4)
moderate = rnorm(100000, mean = 0, sd = .4)

test = as.data.frame(cbind(conservative,liberal,moderate))
new_plot = gather(test, type, Dimension)

ggplot(new_plot, aes(x = Dimension, y = type)) + 
  geom_density_ridges(quantile_lines = TRUE, quantiles = 2, scale = 1) +
  geom_vline(xintercept = 0, linetype = "dotted") + theme_ridges() +
  xlim(-1.0,1.0) + theme(axis.title.y = element_blank()) + xlab("Left-Right Dimension")
############################################

#Figure 3: Bar Plot
data2 = read.csv("https://raw.githubusercontent.com/mawalz05/Paper_Economic_Prosperity_Primary_Choice/master/caucus_primary_count.csv")

#Turning wide data into long data for bar plot
data2 = gather(data2, Type, Proportion, -year)

data2 %>%
  group_by(year) %>%
  ggplot(aes(x = year, y = Proportion, fill = Type)) + 
  geom_bar(position = "fill", stat = "identity")  + scale_fill_grey() + theme_classic()
#############################################


