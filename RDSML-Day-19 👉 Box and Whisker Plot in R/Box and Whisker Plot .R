# Loading the dataset
mydata = ToothGrowth

# Converting the variable dose from a numeric to a factor variable
mydata$dose = as.factor(mydata$dose)

library(ggplot2)

# Basic boxplot
ggplot(mydata,aes(x = dose, y = len)) +
  geom_boxplot()

# Rotating the boxplot
ggplot(mydata,aes(x = dose, y = len)) +
  geom_boxplot() +
  coord_flip()

# Notched box plot
ggplot(mydata,aes(x = dose, y = len)) +
  geom_boxplot(notch = T)

# changing outlier color, shape, size
ggplot(mydata,aes(x = dose, y = len)) +
  geom_boxplot(outlier.color = "red", outlier.shape = 8,
               outlier.size = 3)

# Choosing which item to display
ggplot(mydata,aes(x = dose, y = len)) +
  geom_boxplot(outlier.color = "red", outlier.shape = 8,
               outlier.size = 3) +
  scale_x_discrete(limits = c( "2"))

# Changing box plot line colors by groups
ggplot(mydata,aes(x = dose, y = len, color = dose)) +
  geom_boxplot()

# Changing the item order
ggplot(mydata,aes(x = dose, y = len, color = dose)) +
  geom_boxplot() +
  scale_x_discrete(limit = c("2", "0.5", "1"))

# Box plot with multiple groups
ggplot(mydata,aes(x = dose, y = len, fill = supp)) +
  geom_boxplot()

# Changing the position 
ggplot(mydata,aes(x = dose, y = len, fill = supp)) +
  geom_boxplot(position = position_dodge(1))




