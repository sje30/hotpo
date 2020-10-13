hotpo  = function(x) {
  count = 0
  while (x > 1) {
    count = count + 1
    if  ( (x %% 2)==0) {
      ## even number
      x = x / 2
    } else {
      ## odd, so triple plus one
      x = (3*x) + 1
    }
  }
  count
}

hotpo(7)

x = 1:1e6

system.time(res <- sapply(x, hotpo))
sum(res)
plot(res)
##  Part 2

Rcpp::sourceCpp('hotpo.cpp')

system.time(res2 <- sapply(x, hotpo_c))
sum(res2)

### another loop?

system.time(res3 <- hotpor_c(1, 1e6))
sum(res3)





