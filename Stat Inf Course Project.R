set.seed(15)
output <- vector("numeric", length(1:1000))
for (i in 1:1000) { 
output[[i]] <- mean(rexp(40,.2))
}


#Sample  distribution of 1000 averages of 40 exponentials with lambda = .2
mean(output)
sd(output)
var(output)

#Sample distribution of 40000 exponentials with lambda = .2
set.seed(12)
output2 <- rexp(40000, .2)
mean(output2)
sd(output2) #Greater sd
var(output2) #Greater variance

#Histogram of 1000 distributions of 40 exponentials with lambda = .2
hist(output)

#Theorectical mean
1/.2 #5 



#Comparison to a normal distribution
par(mfrow = c(2,1))
hist(output,
     main = "Means of \n40 exponential distributions \nwith lambda = .2")
hist(rnorm(1000, 5),
     main = "Normal distribution w/ mean 5")

tinytex::install_tinytex()


hist(output)
abline(v = mean(output), col = "blue", lwd = 2)
abline(v = 5, col = "red", lwd = 2)

