setwd("/Users/YanYang/code/exdata-data-NEI_data/")
clsf <- readRDS("Source_Classification_Code.rds")
pm <- readRDS("summarySCC_PM25.rds")
sum <- tapply(pm$Emissions, pm$year, sum)
sum <- sum/10^6
png(filename = "plot1.png")
par(mar = c(5,5,4,2))
barplot(sum, main = "Total PM2.5 Emissions", xlab = "Year", ylab = "PM2.5 Emission(Million Tons)", col = "red", lwd = 3)
dev.off()