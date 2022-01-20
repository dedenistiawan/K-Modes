library(MASS)
library(klaR)
library (readr)
urlfile = "https://raw.githubusercontent.com/dedenistiawan/Dataset/main/Dataset%20DAS.csv"

Data<-read_csv(url(urlfile))

cluster.results <-kmodes(Data , 3, iter.max = 10, weighted = FALSE )

cluster.output <- cbind(data ,cluster.results$cluster)
write.csv(cluster.output, file = "kmodes clusters.csv", row.names = TRUE)