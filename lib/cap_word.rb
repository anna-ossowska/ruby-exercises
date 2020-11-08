#TODO: Convert a sentence in a way each word is capitalized.
class String
  def cap_words()
    split(' ').map(&:capitalize).join(' ')
  end
end

print "How can mirrors be real if our eyes aren't real".cap_words
