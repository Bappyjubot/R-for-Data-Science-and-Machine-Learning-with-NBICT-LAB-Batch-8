# rnorm
x = rnorm(1000, mean = 0, sd = 1)
mean(x)
sd(x)

y = rnorm(100, mean = 100, sd = 3)
mean(y)
sd(y)

# pnoem

# At z = 0 then the value of probability is 0.5
pnorm(0)
pnorm(-1.96)
pnorm(-1.64)

# qnorm
qnorm(0.05050258)
qnorm(0.05)

# dnorm
# Y axis value for z = 0
dnorm(0)

# Lets use dnorm to draw the normal distribution
zvalues = seq(-4.0, 4.0, by = 0.1)
dvalues = dnorm(zvalues)
dvalues
plot(zvalues,dvalues)

