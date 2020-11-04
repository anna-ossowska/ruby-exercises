# TODO: Given an integral number, determine if it's a square number.

def is_square(x)
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end

def is_square_raw(x)
  x < 0 ? false : x**0.5 % 1 == 0
end

puts is_square(0)
puts is_square(10)
puts is_square_raw(4)
puts is_square_raw(10)