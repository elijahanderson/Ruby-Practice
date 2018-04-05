=begin
  Assignment: Implement a caesar cipher that takes in a string and the shift
              factor and then outputs the modified string:
=end
def caesar_cipher(s, shift)
  s.each_char do |i|
    # the shift fits within the limits (any case)
    if (s[i].ord >= 97 and s[i].ord + shift <= 122) or (s[i].ord >= 65 and s[i].ord + shift <= 90)
      s[i] = (s[i].ord + shift).chr
    # the shift needs to be wrapped (lowercase)
    elsif s[i].ord >= 97 and s[i].ord + shift > 122
      new_shift = shift - (122 - s[i].ord)
      s[i] = (96 + new_shift).chr
    # wrapped (uppercase)
    elsif s[i].ord >= 65 and s[i].ord + shift > 90
      new_shift = shift - (90 - s[i].ord)
      s[i] = (64 + new_shift).chr
    end
  end
  puts "\nModified string: #{s}"
end

print "Enter a string to be encoded: "
s = gets.chop
print "\nEnter the shift factor: "
n = gets.chop.to_i
caesar_cipher(s, n)
