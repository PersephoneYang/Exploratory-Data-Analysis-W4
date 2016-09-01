library(ggplot2)
setwd("/Users/YanYang/code/exdata-data-NEI_data/")
clsf <- readRDS("Source_Classification_Code.rds")
pm <- readRDS("summarySCC_PM25.rds")
coal <- clsf[grepl("coal", clsf$Short.Name, ignore.case = TRUE),]
scc <- coal$SCC
c.related <- subset(pm, pm$SCC %in% scc & pm$Emissions != 0)
c.related$year <- as.factor(c.related$year)
png(filename = "plot4.png")
g <- ggplot(data = c.related, aes(x = year, y = log(Emissions)))
g + geom_boxplot() + theme_bw() + labs(title = "Coal-combustion-related Resource Emissions in Years by Types") + labs(x = "Year", y = "Log of PM2.5 Emissions")
dev.off()