library(ggplot2)

n = 66

df <- data.frame(x = rep(0, n), y = 1:n)

weight <- 2

df$xend <- df$x + n
df$yend <- df$y*weight

df2 <- data.frame(x = rep(0, n), y = weight*seq(0, n - 1, 1), 
                  xend = rep(0 + n, n), yend = weight*seq(0, n - 1, 1))

col1 <- 'blue'
col2 <- 'red'
col3 <- 'yellow'

ggplot(df) + 
  geom_segment(aes(x = x, y = y, xend = xend, yend = yend), col = col1) +
  geom_segment(data = df, aes(x = x, y = yend, xend = xend, yend = y), col = col2) +
  geom_segment(data = df2, aes(x = x, y = yend, xend = xend, yend = y), col = col3, alpha = .5) +
  theme_void()
  

df_inv <- data.frame(x = df$x, xend = df$xend, y = 2*n - df$y, yend = 2*n - df$yend)
#df2_inv <- df2

col1 <- 'magenta'
col2 <- 'cyan'
col3 <- 'limegreen'

n <- 200

ggplot(df) + 
 geom_segment(aes(x = x, y = y, xend = xend, yend = yend), col = col1, alpha = 1) +
 geom_segment(data = df, aes(x = x, y = yend, xend = xend, yend = y), col = col2, alpha = 1) +
  geom_segment(data = df2, aes(x = x, y = yend, xend = xend, yend = y), col = col3, alpha = .5) +
 #theme_void()

#ggplot(df_inv) + 
  geom_segment(data = df_inv, aes(x = x, y = y, xend = xend, yend = yend), col = col1, alpha = 1) +
  geom_segment(data = df_inv, aes(x = x, y = yend, xend = xend, yend = y), col = col2, alpha = 1) +
  #geom_segment(data = df2_inv, aes(x = x, y = yend, xend = xend, yend = y), col = 'yellow', alpha = .5) +
  theme_void()
