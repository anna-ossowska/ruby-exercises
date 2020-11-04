# TODO: Check to see if a string has the same amount of 'x's and 'o's.
# TODO: The method must return a boolean and be case insensitive.
# TODO: The string can contain any char.

def XO(str)
  
  counter_1 = 0
  counter_2 = 0
  
  letters = str.downcase.split('')

  letters.each do |letter|
    case letter
    when 'x'
      counter_1 += 1
    when 'o'
      counter_2 += 1
    end
  end
  
  counter_1 == counter_2
  
end

def XO_short(str)
  str.downcase.count('x') == str.downcase.count('o')  
end
