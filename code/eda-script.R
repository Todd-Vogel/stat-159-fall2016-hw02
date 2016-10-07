advertising.data <- read.csv("~/Documents/Senior Year/stat159-fall2016-hw02/data/Advertising.csv")

tv.statistics <- summary(advertising.data$TV)
sales.statistics <- summary(advertising.data$Sales)
statistics <- rbind(tv.statistics, sales.statistics)

sink("~/Documents/Senior Year/stat159-fall2016-hw02/data/eda-output.txt")
tv.statistics <- summary(advertising.data$TV)
sales.statistics <- summary(advertising.data$Sales)
statistics <- rbind(tv.statistics, sales.statistics)
statistics
sink()


png('~/Documents/Senior Year/stat159-fall2016-hw02/images/histogram-sales.png')
hist(advertising.data$Sales)
dev.off()

pdf('~/Documents/Senior Year/stat159-fall2016-hw02/images/histogram-sales.pdf')
hist(advertising.data$Sales)
dev.off()

png('~/Documents/Senior Year/stat159-fall2016-hw02/images/histogram-tv.png')
hist(advertising.data$TV)
dev.off()

pdf('~/Documents/Senior Year/stat159-fall2016-hw02/images/histogram-tv.pdf')
hist(advertising.data$TV)
dev.off()