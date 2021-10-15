# 1

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

find_first_nonzero_among([0, 0, 1, 0, 2, 0])
# find_first_nonzero_among(1)

# In the first method call the method is expecting 1 argument but gets six. Turning the 6 integers into an array makes them a single argument.
# In the second method call there is no array for the each method to evaluate.

# 2

# On line 2, 'true' and 'false' are strings and therefor both evaluate as true. Remove the quotation marks and itt will work.

# 3

# On line 6, it should be number = gets.chomp.to_i to convert the user's input into an integer.

# 4

# pets[:dog].push('bowser')

# 5

# Use the .select method instead of .map

# 6

def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# This will return nil because the only argument that will return a value is Einstein since it's the last line of code.

# 7

balance = 0

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

# The original code did not keep a rolling total of the monthly balances.

# 8

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# There are more colors than things so we should use things instead of colors on line 96. Then we need to add "- 1" on the same line because arrays have a 0-based index.

# 9

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1
  # needed to change product to initialization to 1 so it doesn't multiply by 0.

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

# 10

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player = player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts player