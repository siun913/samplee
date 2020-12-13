usedcars <- read.csv("usedcars.csv", stringsAsFactors = FALSE)
usedcars
str(usedcars)
summary(usedcars$year)
summary(usedcars[c("price", "mileage")])

(36000 + 44000 + 56000) / 3
mean(c(36000, 44000, 56000))

median(c(36000, 44000, 56000))

range(usedcars$price)
diff(range(usedcars$price))
IQR(usedcars$price)
quantile(usedcars$price)
quantile(usedcars$price, probs = c(0.01, 0.99))
quantile(usedcars$price, seq(from = 0, to = 1, by = 0.20))

boxplot(usedcars$price, main="Boxplot of Used Car Prices",
        ylab="Price")
boxplot(usedcars$mileage, main="Boxplot of Used Car Mileage",
        ylab="Odometer")

hist(usedcars$price, main = "Histogram of Used Car Prices",
     xlab = "Price")

var(usedcars$price)
sd(usedcars$price)

table(usedcars$year)
table(usedcars$model)
table(usedcars$color)

model_table <- table(usedcars$color)
prop.table(model_table)

color_table <- table(usedcars$color)
color_pct <- prop.table(color_table) * 100
round(color_pct, digits = 3)

plot(x = usedcars$mileage, y = usedcars$price,
     main = "Scatterplot of Price vs. Mileage",
     xlab = "Used Car Odometer",
     ylab = "Used Car Price")

usedcars$conservative <- usedcars$color %in% c("Black", "Gray", "Silver", "White")
table(usedcars$conservative)

install.packages("gmodels")
library(gmodels)

CrossTable(x = usedcars$model, y = usedcars$conservative)
