library(gganimate)
library(ggplot2)

n <- 100

df <- data.frame(x1 = rep(0, n), x2 = rep(1, n),
                 y1 = 0:(n-1), y2 = 1:n,
                 frame = rep(c(1:2), n/2))
df

p <- ggplot(df) +
  
  geom_segment(aes(x = x1, xend = x2, y = y1, yend = y2, frame = frame), col = 'cyan') +
  geom_segment(aes(x = x1, xend = x2, y = y1 + 2, yend = y2 + 2, frame = frame), col = 'cyan') +
  geom_segment(aes(x = x1, xend = x2, y = y1 + 4, yend = y2 + 4, frame = frame), col = 'cyan') +
  geom_segment(aes(x = x1, xend = x2, y = y1 + 6, yend = y2 + 6, frame = frame), col = 'cyan') +
  
  
  geom_segment(aes(x = x1, xend = x2, yend = y1, y = y2, frame = frame), col = 'magenta') +
  geom_segment(aes(x = x1, xend = x2, yend = y1 + 1, y = y2 + 1, frame = frame), col = 'magenta') +
  geom_segment(aes(x = x1, xend = x2, yend = y1 + 3, y = y2 + 3, frame = frame), col = 'magenta') +
  geom_segment(aes(x = x1, xend = x2, yend = y1 + 5, y = y2 + 5, frame = frame), col = 'magenta') +
  theme_void() + theme(plot.background = element_rect(fill = 'cornsilk'))

gganimate(p, filename = '/Users/mikeriley/Documents/derps/test.gif', interval = .05)
