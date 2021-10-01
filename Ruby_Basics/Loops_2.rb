# 1

count = 1

loop do
  if count.even?
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end

  break if count == 5
  count += 1
end

# 2

loop do
  number = rand(100)
  puts number

  if number.between?(0,10)
    break
  end
end

# 4
process_the_loop = [true, false].sample

if process_the_loop == true
  loop do
    puts "The loop was processed."
    break
  end
else
  puts "The loop wasn't processed."
end

# 5

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

# 6

numbers2 = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers2 << input
  break if numbers2.size == 5
end
p numbers2

# 7

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.size == 0
end

# 8

5.times do |index|
  puts index
  break if index == 2
end

# 9

number3 = 0

until number3 == 10
  number3 += 1
  if number3 %2 == 0
  puts number3
  end
end

# 10
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b =+ rand(2)
  next unless number_a == 5 || number_b == 5

  puts '5 was reached.'
  break
end

# 11

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end