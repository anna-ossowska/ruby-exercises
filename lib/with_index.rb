# The with_index method takes an optional parameter to offset the starting index.
# each_with_index does the same thing, but has no optional starting index.

arr = [1, 2, 3]

arr.each.with_index(1) do |x, index|
  puts "#{index} - #{x}"
end
