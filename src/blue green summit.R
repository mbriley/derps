library(ggplot2)

n = 200

df <- data.frame(x = rep(0, n), y = 1:n)

df$xend <- df$x + n
df$yend <- df$y*1.5

df2 <- data.frame(x = df$y, y = df$x, xend = df$yend, yend = df$xend)

derp <- ggplot(df) + 
  geom_segment(aes(x = x, y = y, xend = xend, yend = yend), col = 'blue') +
  geom_segment(data = df, aes(x = x, y = yend, xend = xend, yend = y), col = 'green') +
 theme_void()

ggsave(paste0('output/',  as.character(Sys.time()), '.png'), derp, width = 8, height = 8)
