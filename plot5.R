library(ggplot2)
setwd("/Users/YanYang/code/exdata-data-NEI_data/")
clsf <- readRDS("Source_Classification_Code.rds")
pm <- readRDS("summarySCC_PM25.rds")
m.bc <- subset(pm, pm$type == "ON-ROAD" & fips == "24510")
m.bc$year <- as.factor(m.bc$year)
png(filename = "plot5.png")
g <- ggplot(m.bc, aes(x = year, y = log(Emissions)))
g + geom_boxplot() + labs(title = "Motor Vehicle Resource Emissions in Baltimore") + labs(x = "Year", y = "Log of PM2.5 Emissions")
dev.off()