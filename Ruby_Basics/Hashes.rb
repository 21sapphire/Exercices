# 1

car = {type: 'sedan',
       color: 'blue',
       mileage: 80_000
      }

# 2

car[:year] = 2003
p car

# 3

car.delete(:mileage)
puts car

# 4
puts car[:color]

# 5

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, value| puts "A #{key} number is #{value}." }

# 6

half_numbers = numbers.map { |key, value| value / 2 }
p half_numbers

# 7

low_numbers = numbers.select { |key, value| value < 25 }
p low_numbers

# 8

low_numbers = numbers.select! { |key, value| value < 25 }

p low_numbers
p numbers

# 9

# {car: {type: 'sedan', color: 'blue', year: 2003}, truck: {type: 'pickup', color: 'red', year: 1998}}

# 10

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]