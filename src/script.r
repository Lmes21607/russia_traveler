library(ggplot2)

cityes <- read.csv(file='russia_cities.csv',fileEncoding = "UTF-8")

png("per100t.png", width = 1500, height = 1500)

p<-ggplot(data=cityes, aes(x=city, y=per100t)) +
  geom_bar(stat="identity")

p <- p + theme(axis.text.x = element_text(angle = 90, vjust = 1, hjust=1))

p

dev.off()

png("per100t_and_leq_2000.png", width = 1500, height = 1500)

d = data.frame(x=c(0, 0, 68, 68), y=c(10000, 2000, 2000, 10000))

p <- p + geom_polygon(data=d, mapping=aes(x=x, y=y))

p

dev.off()