# Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

# Example:
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'

# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'

# list([ {name: 'Bart'} ])
# # returns 'Bart'

# list([])
# # returns ''


def list(names)
  arr_names = []
  names.each do |name|
    name.each_value do |value|
      arr_names << value
    end
  end
  if arr_names.length > 1
    arr_names.insert(-2, "&")
    second_slice = arr_names.slice!(-2, 2)
    first_slice = arr_names
    return (first_slice.join(', ')) + ' ' + second_slice.join(' ')
  else 
    arr_names.join(' ')
  end
end

print list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])