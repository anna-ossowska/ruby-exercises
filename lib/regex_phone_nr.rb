# Write a method phone_number? that takes a string as parameter and returns a boolean,
# true when the phone number is a valid phone number:
  # It is valid when starting with a 0 and containing 10 digits. The second digit cannot be a 0.
  # It is also valid when starting with +33 and containing 11 digits. And the digit following the +33 cannot be a 0.
  # The method should ignore space or dashes between digits.
    # should accept 0665363636
    # should accept 0165363636
    # should accept 06 65 36 36 36
    # should accept 06-65-36-36-36
    # should accept +33 6 65 36 36 36
    # should reject 06 65 36 36
    # should reject 2336653636
    # should reject +3366536361

def phone_number?(phone_number)
  phone_number.match?(/^(0|\+33[\s-]?)[1-9][ -]?(\d{2}[\s-]?){4}/) ? true : false
end

puts phone_number?("0665363636")
puts phone_number?("0165363636")
puts phone_number?("06 65 36 36 36")
puts phone_number?("06-65-36-36-36")
puts phone_number?("+33 6 65 36 36 36")
puts phone_number?("06 65 36 36")
puts phone_number?("2336653636")
puts phone_number?("+3366536361")


