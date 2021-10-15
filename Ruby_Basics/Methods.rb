# 1

def print_me
  puts "I'm printing within the method!"
end

print_me

# 2

def print_me
  "I'm printing the return value!"
end

puts print_me

# 3

def hello
  "Hello"
end

def world
  "World"
end

puts hello + " " + world

# 4

def hello
  'Hello'
end

def world
  'World'
end

def greet
  "#{hello} #{world}"
end

puts greet

# 5

def car(make, model)
  puts "#{make} #{model}"
end

car('Toyota', 'Corolla')

# 6

def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true,false].sample
time_of_day(daylight)

# 7

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# 8

def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'

# 9

def add(number1, number2)
  number1 + number2
end

def multiply(method1, method2)
  method1 * method2
end

puts add(2,2) == 4
puts add(5,4) == 9
puts multiply(add(2,2), add(5,4)) == 36

# 10

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))