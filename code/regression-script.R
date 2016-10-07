advertising.data <- read.csv("~/Documents/Senior Year/stat159-fall2016-hw02/data/Advertising.csv")
reg1 <- lm(Sales ~ TV, advertising.data)
a <- summary(reg1)

TV <- advertising.data$TV
Sales <- advertising.data$Sales

save(a, file = "~/Documents/Senior Year/stat159-fall2016-hw02/data/regression.RData")

png('~/Documents/Senior Year/stat159-fall2016-hw02/images/scatterplot-tv-sales.png')
plot(TV, Sales)
abline(reg1, col = "#0000DD59")
dev.off()

pdf('~/Documents/Senior Year/stat159-fall2016-hw02/images/scatterplot-tv-sales.pdf')
plot(TV, Sales)
abline(reg1, col = "#0000DD59")
dev.off()

