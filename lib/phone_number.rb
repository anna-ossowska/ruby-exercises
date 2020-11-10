#TODO: Write a function that accepts an array of 10 integers (between 0 and 9),
#TODO: that returns a string of those numbers in the form of a phone number.
# Example: create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

def create_phone_number(numbers)
  unless numbers.length != 10
    return "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[-4, 4].join}"
  else
    "This method accepts only 10-digits numbers."
  end
end

x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
puts create_phone_number(x)