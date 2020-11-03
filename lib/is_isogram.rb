# TODO: An isogram is a word that has no repeating letters, consecutive or non-consecutive.
# TODO: Implement a function that determines whether a string that contains only letters is an isogram.
# TODO: Assume the empty string is an isogram. Ignore letter case.

def is_isogram(string)
  # split the string into seperate letters and make them downcase
  letters = string.downcase.split('')
  # count the total number of elements inside array
  letters_total = letters.count
  # count the total number of unique elemnts
  letters_unique = letters.uniq.count
  # if numbers are equal, a string is an isogram
  if letters_total == letters_unique
    return true
  else
    return false
  end
end

# puts is_isogram("Dermatoglyphics")
# puts is_isogram("aba")
# puts is_isogram("moOse")

