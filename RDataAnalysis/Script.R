install.packages("Hmisc")
library("Hmisc")

mydata = read.csv("location of csv file")

"Simple correlation matrix"
mydata.cor = cor(mydata)

"correlation can also use a specific coefficient"
mydata.cor = cor(mydata, method = c("spearman"))


"get significance levels"
mydata.rcorr = rcorr(as.matrix(mydata))
mydata.rcorr

"visualization of correlation matrix"
install.packages("corrplot")
library(corrplot)


corrplot(mydata.cor)
"Blue is good(positive) Red is bad(negative)"

"You can also generate a heat map and specify colors even"
palette = colorRampPalette(c("green", "white", "red"))(20)
heatmap(x = mydata.cor, col = palette, symm = TRUE)


