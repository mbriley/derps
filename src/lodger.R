library(data.table)
library(ggplot2)

setwd('/Documents/derps/output/')

x     <- -10:10
noise <- 20
lines <- 10

a     <- -1
b     <- .5
c     <- -3

##########################
####   line drawers   ####
##########################

derp_line <- function(x, a, b, c) {
    a*x + b*(x^2) + c*x^3
  }

df <- data.table(x = x, 
                 y = derp_quad(x, a, b) + 
                   noise*runif(length(x)))

things <- lapply(1:lines, function(line) { 
  paste0('geom_line(aes(x = x, y = y + ', line , ')) + ')})

p <- ggplot(df, aes(x = x)) + theme_void()

for (line in 1:lines) {
  p <- p + eval(parse(text = paste0('geom_line(aes(y = y + ', line , ', col = ', line, '))')))
}

p <- p + theme_void() + 
  guides(col = F) +
  scale_color_continuous(low = 'black', high = 'black') +
  #theme(plot.background = element_rect('grey20')) +
  coord_flip()

print(p)

#derp_saver(p)

derp_saver <- function(p, format = '.pdf', width = 11, height = 8) 
  ggsave(plot = p, filename = paste0(format(Sys.Date(), '%m_%d'),
  paste0(sample(c('d', 'd', 'd', 'r', 'p', 'b', 'u', 'e', 'r', 'p'), 
      floor(runif(1, 4, 16)), replace = T), collapse = ''), format),
  width = 11, height = 8)



#derp_saver(p)
