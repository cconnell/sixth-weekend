# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.

def is_prime? num
  num > 1 && !Math.sqrt(num).to_i.downto(2).find { |i| num % i == 0 }
end

# Second, implement the highest_prime_number_under method below. It should accept a number as
# an argument and return the highest prime number under that number. For example, the
# highest prime number under 10 is 7.

def highest_prime_number_under number
  number.pred.downto(2).find { |i| is_prime? i }
end
