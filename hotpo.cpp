#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]

int hotpo_c(long int x) {
  int count = 0;
  while (x > 1) {
    count = count + 1;
    if ( (x % 2) == 0 ) {
      /* even number */
      x = x / 2;
    } else {
      x = (3*x) + 1;
    }
  }
  return count;
}


// long int required for largish numbers...



// make a function that goes from lo to hi and returns vector...

// [[Rcpp::export]]

NumericVector hotpor_c(long int lo, long int hi) {
  long int n = hi-lo+1;
  NumericVector counts(n);
  long int j;
  for (j=0; j< n; j++) {
    counts[j] = hotpo_c(lo+j);
  }
  return counts;
}
    
    
