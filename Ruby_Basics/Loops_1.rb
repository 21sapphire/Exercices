# 1
loop do
  puts 'Just keep printing,,,'
  break
end

# 3
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# 4

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes"
end

# 5

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

# 6

numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

# 7

count = 1

until count == 11
  puts count
  count += 1
end

# 8

numbers2 = [7, 9, 13, 25, 18]

count2 = 0

until count2 == 5
  puts numbers2.first
  numbers2.shift
  count2 += 1
end

# 9

for i in 1..100
  if i%2 != 0
  puts i
  end
end

# 10

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}"
end