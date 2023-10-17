require_relative '../setup'
require_relative '../exercises/exercise_1.rb'

puts "Stretch Exercise 1"
puts "----------"
@store1 = Store.find(id = 1)
employee1 = @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
puts "Employee1's password: #{employee1.password}"