library(tidyr)
gdp = read.csv("gdp_free.csv")  # read csv file
summary(gdp)

library(ggplot2)
scatterplot <- ggplot(data = gdp, mapping = aes(x = FreedomScore, y = LogGDP)) + geom_point()
scatterplot


regmodel = lm(LogGDP ~ FreedomScore, data = gdp)
summary(regmodel)
plot(regmodel)
