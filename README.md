# hotpo

HOTPO = "half or triple plus one".

Collatz conjecture.  http://oeis.org/A006577

Scientific American article:
https://paperpile.com/app/p/b96eca8c-0ac1-0aa8-96f6-1c2ee37aca2d

See the [main document](https://sje30.github.io/hotpo/hotpo_compare.html)


# Part 1 - implementation in R

[hotpo.R](hotpo.R)


# Part 2 - implementation in Rcpp

[hotpo.cpp](hotpo.cpp) 

# Part 3 - implementation in Julia

[hotpo.jl](hotpo.jl) 

# Instructions to run:

```
Rscript hotpo.R
julia hotpo.jl
```

## [2020-10-26 Mon]

Update, thanks to Yujia Liu.  If you are working on Windows with Rcpp,
you will need to change "long int x" to "long long int x".  the size
of integers depends on compilers.
[reference](https://stackoverflow.com/questions/4244311/gcc-width-of-long-int-on-different-architectures).
If you can, I'd advise windows users to use WSL2.


