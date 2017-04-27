setwd("~/derp")

par(mar=c(1,1,1,1))

lim <- 100
len <- 200
frame <- lim

xs <- runif(len,min=-lim,max=lim)
ys <- runif(len,min=-lim,max=lim)

ramp <- colorRampPalette(c('blue','green','yellow'))(len)

plot(0,type='n',xlab='',ylab='',xlim=c(-frame,frame),ylim=c(-frame,frame),axes=FALSE)
for (i in 1:len){
  x <- c(xs[i],xs[i]*-1)
  y <- c(ys[i],ys[i]*-1)
  points(x,y,type='l',col=ramp[i])
}
