library(readxl)
data=read_excel("H:/Book1.xlsx")
View(data)
data$`CFU/ml` = as.factor(data$`CFU/ml`)

library(ggplot2)

ggplot(data, aes(x = `CFU/ml`, y = `Sample`)) + 
  geom_boxplot()

# Rotating the box plot
ggplot(data, aes(x = `CFU/ml`, y = `Sample`)) + 
  geom_boxplot() +
  coord_flip()

# Notched box plot
ggplot(data, aes(x = `CFU/ml`, y = `Sample`)) + 
  geom_boxplot(notch = T)

# Changing outlier color, shape, and size
ggplot(data, aes(x = `CFU/ml`, y = `Sample`)) +
  geom_boxplot(outlier.color = "blue", outlier.shape = 14,
               outlier.size = 09)

# Choosing which item to display
ggplot(data, aes(x = `CFU/ml`, y = `Sample`)) + 
  geom_boxplot(outlier.color = "red", outlier.shape = 8,
               outlier.size = 3)


# Changing box plot line colors by groups
ggplot(data, aes(x = `CFU/ml`, y = Sample, color = `CFU/ml` )) + 
  geom_boxplot()


# Box plot with multiple groups
ggplot(data, aes(x = `CFU/ml`, y = Sample, color = `CFU/ml`, fill = supp)) + 
  geom_boxplot()

# Changing the position
ggplot(data, aes(x = `CFU/ml`, y = Sample, fill = supp)) + 
  geom_boxplot(position = position_dodge(1))
