#TODO: Write at least three methods that sum the elements of an array

def sum_1(n)
  n.inject(:+)
end

def sum_2(n)
  n.inject(0) {|sum, n| sum + n}
end

def sum_3(n)
  n.reduce(:+)
end

def sum_4(n)
  n.reduce(0) {|sum, n| sum + n}
end

def sum_5(n)
  n.sum
end

def sum_6(n)
  sum = 0
  n.map {|x| sum += x}
end

digits = [1, 20, 100, 5, 90]

puts sum_1(digits)
puts sum_2(digits)
puts sum_3(digits)
puts sum_4(digits)
puts sum_5(digits)
puts sum_6(digits)