#TODO: Write a function that will return the count of distinct case-insensitive alphabetic characters
#TODO: and numeric digits that occur more than once in the input string.
#TODO: The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

def duplicate_count(text)
  # create an array with properly formatted elements
  letters = text.downcase.split('')

  # make the hash deafult to 0 so that += will work correctly
  stats = Hash.new(0)

  # iterate over the array and count number of times each letter occur
  letters.each {|letter| stats[letter] += 1}

  # delete key-value pairs from the hash which occur only once
  stats.delete_if {|key, value| value == 1}

  # return the number of remaining key-value pairs
  return stats.values.count
end

puts duplicate_count('abcdeaB')
