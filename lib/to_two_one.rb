#TODO: Take 2 strings s1 and s2 including only letters from ato z.
#TODO: Return a new sorted string, the longest possible, containing distinct letters,
#TODO: each taken only once - coming from s1 or s2.

def longest(a1, a2)
  return (a1 + a2).chars.uniq.sort.join
end

# a = "loopingisfunbutdangerous"
# b = "lessdangerousthancoding"
# puts longest(a, b)

