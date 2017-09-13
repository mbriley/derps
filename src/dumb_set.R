require(ggplot2)

n <- 1000

low_col  <- 'magenta'
high_col <- 'cyan'
j_scale  <- .5

df <- data.frame(X = 20:n, Y = 1/log(20:n))
df$j1 <- rnorm(n-19, 0, j_scale/n)
df$j2 <- rnorm(n-19, 0, j_scale/n)

ggplot(df) + geom_segment(aes(x = 0, xend = 1, 
                                      y = Y + j1, yend = Y + j2, col = X), size = 1, alpha = 1) +
  theme_void() + guides(col = F) + scale_color_gradient(low = low_col, high = high_col)


