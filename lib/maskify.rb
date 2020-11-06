# Usually when you buy something, you're asked whether your credit card number,
# phone number or answer to your most secret question is still correct.
# However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.
#TODO: Your task is to write a method maskify, which changes all but the last four characters into '#'.

def maskify(cc)
  letters = cc.split('')
  n = letters.length
  if n > 4
    letters[0..(n-4)] = "#" * (n-4) + letters[-4, 4].join
  else
    letters.join
  end
end

print maskify("12345678")