# The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

# int.to_s(16) converts the number into the hexadecimal
# rjust(2, '0') is used, since Ruby by default omits the leading zeros

def rgb(r, g, b)
  hex_arr = []
  [r, g, b].map do |color|
    if color > 255
      hex_arr.push(255.to_s(16))
    elsif color <= 0
      hex_arr.push(0.to_s(16).rjust(2, '0'))
    else 
      hex_arr.push(color.to_s(16).rjust(2, '0'))
    end
  end
  return hex_arr.join('').upcase
end 

puts(rgb(300, 255, 255)) # returns FFFFFF
puts(rgb(255, 255, 300)) # returns FFFFFF
puts(rgb(0,0,0)) # returns 000000
puts(rgb(148, 0, 211)) # returns 9400D3
puts(rgb(10, 184, 134)) # returns #0AB886