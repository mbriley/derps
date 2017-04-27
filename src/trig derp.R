par(mar = c(0,0,0,0))
par(lwd = 1.5)

df1 <- data.frame(y1 = rep(0, 10), y2 = rep(10, 10), x1 = 0:9, x2 = rep(0, 10))

plot(-10:10, -10:10, type = 'n', axes = F, xlab = '', ylab = '')

for (i in 1:10) {
  lines(y = df1[i,1:2],    x = df1[i, 3:4])
  lines(y = df1[i,1:2],    x = -1*df1[i, 3:4])
  lines(y = -1*df1[i,1:2], x = df1[i, 3:4])
  lines(y = -1*df1[i,1:2], x = -1*df1[i, 3:4])
}

df2 <- data.frame(lapply(df1, function(x) (10*(cos(x)))))

for (i in 1:10) {
  lines(y = df2[i,1:2],    x = df2[i, 3:4], col = 'black')
  lines(y = df2[i,1:2],    x = -1*df2[i, 3:4], col = 'black')
  lines(y = -1*df2[i,1:2], x = df2[i, 3:4], col = 'black')
  lines(y = -1*df2[i,1:2], x = -1*df2[i, 3:4], col = 'black')
}

df3 <- data.frame(lapply(df1, function(x) {sin(x)*10}))

for (i in 1:10) {
  lines(y = df3[i,1:2],    x = df3[i, 3:4], col = 'black')
  lines(y = df3[i,1:2],    x = -1*df3[i, 3:4], col = 'black')
  lines(y = -1*df3[i,1:2], x = df3[i, 3:4], col = 'black')
  lines(y = -1*df3[i,1:2], x = -1*df3[i, 3:4], col = 'black')
}

df4 <- data.frame(lapply(df1, function(x) {tan(x)*1.5}))

for (i in 1:10) {
  lines(y = df4[i,1:2],    x = df4[i, 3:4], col = 'black')
  lines(y = df4[i,1:2],    x = -1*df4[i, 3:4], col = 'black')
  lines(y = -1*df4[i,1:2], x = df4[i, 3:4], col = 'black')
  lines(y = -1*df4[i,1:2], x = -1*df4[i, 3:4], col = 'black')
}

