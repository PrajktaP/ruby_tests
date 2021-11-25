# The Fibonacci sequence is such that each number is the sum of the two preceding ones, starting from 0 and 1

def fib(n)
  return 1 if n <= 2

  fib_index = 3
  a, b = 1, 1

  while fib_index <= n
    c = a + b
    a = b
    b = c
    fib_index += 1
  end

  c
end

(1..10).map {|i| fib(i)}
