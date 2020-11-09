# Given n, take the sum of the digits of n.
# If that value has more than one digit, continue reducing in this way until a single-digit number is produced.
# The input will be a non-negative integer.

def digital_root(n)
  digits = n.digits
  sum = digits.inject(:+)
  sum < 10 ? sum : digital_root(sum)
end

puts digital_root(493193)