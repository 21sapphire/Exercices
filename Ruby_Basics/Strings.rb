# 1

empty_string = " "

# 2

puts "It's now 12 o'clock."

# 3

name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0

# 4

name = 'Elizabeth'

puts "Hello, #{name}!"

# 5

first_name = 'John'
last_name = 'Doe'

full_name = first_name + ' ' + last_name

p full_name

# 6

state = 'tExAs'

state.capitalize!
puts state

# 7

greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting

# 8

alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')

# 9

words = 'car human elephant airplane'

words.split(' ').each {|word| puts word + 's'}

# 10

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')
puts colors.include?('ink')