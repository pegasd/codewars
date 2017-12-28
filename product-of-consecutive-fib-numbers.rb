#!/usr/bin/ruby

def productFib(prod)
  # Generate some Fibonacci cache
  fib = [0, 1]
  # Newer Rubies behave nicer
  #150.times { fib.push fib.last(2).sum }
  150.times { fib.push fib.last(2).inject :+ }

  result = 1
  n = 2

  while result < prod
     fib_n = fib[n]
     fib_n_one = fib[n + 1]
     return [fib_n, fib_n_one, true] if fib_n * fib_n_one == prod
     n += 1
     result = fib_n * fib_n_one
   end
   return [fib[n-1], fib[n], false]
end
