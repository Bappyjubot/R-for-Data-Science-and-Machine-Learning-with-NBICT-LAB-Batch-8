# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point()

# changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=16)

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=16) +
  geom_smooth(method = lm)

# Removing the confidence interval
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = lm, se = FALSE)

# Loess Method
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth()

# Change the line type and color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=16) +
  geom_smooth(method = lm, linetype = "dashed", color = "red")

# changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18
             , color = "blue") +
  geom_smooth(method = lm, linetype = "dashed", color = "red", fill = "blue")

# Scatter plots with multiple groups

# Converting the cyl column from a numeric to factor
dataset$cyl = as.factor(dataset$cyl)

# Changing the point shapes by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) + 
  geom_point()

# Changing point shapes and color
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, colour = cyl )) + 
  geom_point()

# Changing point Shapes, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, colour = cyl, size = cyl )) + 
  geom_point()
