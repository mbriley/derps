par(mar = c(0,0,0,0))
par(lwd = 1.5)
par(bg = 'grey50')

df1 <- data.frame(y1 = rep(0, 10), y2 = rep(10, 10), x1 = 0:9, x2 = rep(0, 10))
df2 <- data.frame(y1 = rep(0, 10), y2 = rep(10, 10), x1 = 19:10, x2 = rep(0, 10))

plot(-20:20, -20:20, type = 'n', axes = F, xlab = '', ylab = '')

for (i in 1:10) {
  lines(y = df1[i,1:2],    x = df1[i, 3:4], col = 'blue')
  lines(y = df1[i,1:2],    x = -1*df1[i, 3:4], col = 'blue')
  lines(y = -1*df1[i,1:2], x = df1[i, 3:4], col = 'blue')
  lines(y = -1*df1[i,1:2], x = -1*df1[i, 3:4], col = 'blue')

  lines(y = df2[i, 1:2], x = df2[i, 3:4], col = 'red')
  lines(y = -1*df2[i, 1:2], x = df2[i, 3:4], col = 'red')
  
  lines(y = df2[i, 1:2], x = -1*df2[i, 3:4], col = 'yellow')
  lines(y = -1*df2[i, 1:2], x = -1*df2[i, 3:4], col = 'yellow')
  
}

plot(-10:10, -10:10, type = 'n', axes = F, xlab = '', ylab = '')

df2 <- df1
df2$x1 <- df2$x1 + .5

for (i in 1:10) {
  lines(y = df1[i,1:2],    x = df1[i, 3:4], col = 'blue')
  lines(y = df1[i,1:2],    x = -1*df1[i, 3:4], col = 'blue')
  lines(y = -1*df1[i,1:2], x = df1[i, 3:4], col = 'blue')
  lines(y = -1*df1[i,1:2], x = -1*df1[i, 3:4], col = 'blue')
  
  lines(y = df2[i, 1:2], x = df2[i, 3:4], col = 'red')
  lines(y = -1*df2[i, 1:2], x = df2[i, 3:4], col = 'red')
  
  lines(y = df2[i, 1:2], x = -1*df2[i, 3:4], col = 'yellow')
  lines(y = -1*df2[i, 1:2], x = -1*df2[i, 3:4] , col = 'yellow')
  
}

