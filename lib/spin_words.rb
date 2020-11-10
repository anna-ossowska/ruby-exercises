#TODO: Write a method that takes in a string of one or more words,
#TODO: and returns the same string, but with all five or more letter words reversed
#TODO: Strings passed in will consist of only letters and spaces.
#TODO: Spaces will be included only when more than one word is present.
# Examples: spin_words( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
# Examples: spin_words( "This is a test") => returns "This is a test"
# Examples: spin_words( "This is another test" )=> returns "This is rehtona test"

def spin_words(string)
  words = string.split(' ')
  new_str = []
  words.each do |word|
    if word.length >= 5
      new_str << word.reverse
    else
      new_str << word
    end
  end
  new_str.join(' ')
end

puts spin_words("Hey fellow warriors")
puts spin_words( "This is a test")
puts spin_words("This is another test")
  
  