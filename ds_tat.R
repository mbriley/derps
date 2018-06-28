library(tidyverse)

dates <- c('1922-11-02',
'2017-09-13',
'1928-06-21',
'2017-12-19',
'1947-12-19')

df <- data.frame(dates, 
           y = as.numeric(substr(dates, 3, 4)),
           m = as.numeric(substr(dates, 6, 7)), 
           d = as.numeric(substr(dates, 9, 10)))
df

# random
ggplot(df) + 
  geom_segment(aes(x = y/100, xend = y/100, y = 0, yend = runif(nrow(df)))) + 
  geom_segment(aes(x = m/12, xend = m/12, y = 0, yend = runif(nrow(df)))) + 
  geom_segment(aes(x = d/31, xend = d/31, y = 0, yend = runif(nrow(df)))) + 
  coord_polar() + 
  theme_void()

# heights, years bigger
ggplot(df) +
  geom_segment(aes(x = y/100, xend = y/100, y = 0, yend = 3)) + 
  geom_segment(aes(x = m/12, xend = m/12, y = 0, yend = 2)) + 
  geom_segment(aes(x = d/31, xend = d/31, y = 0, yend = 1)) + 
  coord_polar() + 
  theme_void()

# heights days bigger
ggplot(df) +
  geom_segment(aes(x = y/100, xend = y/100, y = 0, yend = 1)) + 
  geom_segment(aes(x = m/12, xend = m/12, y = 0, yend = 2)) + 
  geom_segment(aes(x = d/31, xend = d/31, y = 0, yend = 3)) + 
  coord_polar() + 
  theme_void()


ggplot(df) +
  geom_segment(aes(x = y/100, xend = d/31, y = 0, yend = 1)) + 
  geom_segment(aes(x = m/12, xend = d/31, y = 0, yend = 1)) + 
  geom_segment(aes(x = d/31, xend = d/31, y = 0, yend = 1)) + 
#  coord_polar() + 
  theme_void()


ggplot(df[1:4,]) +
  geom_segment(aes(x = y/100, xend = 47/100, y = 0, yend = 1)) + 
  geom_segment(aes(x = m/12, xend = 12/12, y = 0, yend = 1)) + 
  geom_segment(aes(x = d/31, xend = 19/31, y = 0, yend = 1)) + 
  coord_polar() + 
  theme_void()


ggplot(df[1:4,]) +
  geom_segment(aes(x = y/100, xend = 47/100, y = 0, yend = 1, col = 'year')) + 
  geom_segment(aes(x = m/12, xend = 12/12, y = 0, yend = 1, col = 'month')) + 
  geom_segment(aes(x = d/31, xend = 19/31, y = 0, yend = 1, col = 'day'))

ggplot(df[1:4,]) +
  geom_segment(aes(x = y/100, xend = 47/100, y = 0, yend = 1, col = 'year')) + 
  geom_segment(aes(x = m/12, xend = 12/12, y = 0, yend = 1, col = 'month')) + 
  geom_segment(aes(x = d/31, xend = 19/31, y = 0, yend = 1, col = 'day')) + 
  theme_bw() + coord_polar(theta = c('y'))

