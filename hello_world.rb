=begin
  HELLO WORLD -- my first ruby program
  (This is a block comment)
=end

# print out "Hello, World!" (This is a single-line comment)
puts "Hello, World!"

# print out the user's name in a friendly message
puts "Please enter your beautiful name: "
name = gets.chop # .chop removes the last char from the entered string (\n in this case)
puts "Hi there, #{name}, I'm your computer!"
puts "Hi there, " + name + ", I'm your computer!"
