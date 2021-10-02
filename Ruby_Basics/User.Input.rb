# 1

puts "Who is your favorite rock and roll band?"
input = gets.chomp
puts input

# 2

puts "What is your age in years?"
age_in_years = gets.chomp
age_in_months = age_in_years.to_i * 12 
puts "You are #{age_in_months} months old."

# 3

puts "Do you want me to print something? (y/n)"
user_input = gets.chomp
if user_input == "y"
  puts "something"
end

# 4

loop do
  puts "Do you want me to print something? (y/n)"
  answer = gets.chomp
    if answer.downcase == "y"
      puts "something"
      break
    elsif
      answer.downcase == "n"
      break
    else
      puts "You must enter y or n. Please try again."
    end
end

# or

answer2 = nil

loop do
  puts "Do you want me to print something? (y/n)"
  answer2 = gets.chomp.downcase
  break if ['y', 'n'].include?(answer2)
  puts "Invalid input. Please answer y or n."
end

if answer2 == "y"
  puts "something"
end

# 5

number = nil

loop do
  puts "How many output lines do you want? Enter a number that is 3 or higher."
  number = gets.chomp.to_i
  break if number >= 3
  puts "Error! You must choose a number that is 3 or higher!"
end

count = 0

loop do
  puts "Launch School is the best!"
  count +=1
  break if count == number
end

# 6

loop do
  puts "Please enter your password."
  password = gets.chomp
  break if password == "SecreT"
  puts "Invalid password!"
end

puts "Welcome!"

# 7

username = "admin"
password2 = "SecreT"

loop do
  puts "Please enter user name."
  username_answer = gets.chomp

  puts "Please enter password."
  password_answer = gets.chomp

  break if username_answer == username && password_answer == password2
  puts "Authorization failed!"
end

puts "Welcome!"

# 8

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil

loop do
  puts "Please enter the numerator: "
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers are allowed."
end

denominator = nil

loop do
  puts "Please enter the denominator: "
  denominator = gets.chomp
  if denominator == "0"
    puts "Invalid input. 0 is not allowed."
  else
    break if valid_number?(denominator)
    puts "Invalid input. Only integers are allowed."
  end
end

division_answer = numerator.to_i / denominator.to_i

puts "#{numerator} / #{denominator} = #{division_answer}"

# 9

loop do 
  user_answer = nil
  count = nil

  loop do
    puts "How many output lines do you want? Enter a number that is 3 or higher. (Q to quit)"
    
    user_answer = gets.chomp.downcase
    break if user_answer == "q"

    count = user_answer.to_i
    break if count >= 3

    puts "Error! You must choose a number that is 3 or higher!"
  end

  break if user_answer == "q"

  while count > 0
    puts "Launch School is the best!"
    count -= 1
  end
end

# 10

def valid_number2?(number_string2)
  number_string2.to_i.to_s == number_string2 && number_string2.to_i != 0
end

def valid_integer
  loop do
    puts "Please enter a positive and negative integer."
    number2 = gets.chomp
    return number2.to_i if valid_number2?(number2)
    puts "Invalid input. Only non-zero integers are allowed."
  end
end

integer1 = nil
integer2 = nil

loop do
  integer1 = valid_integer
  integer2 = valid_integer
  break if integer1 * integer2 < 0
  puts "Invalid. One integer must be positive and one must be negative."
end

answer3 = integer1 + integer2

puts "#{integer1} + #{integer2} = #{answer3}"
