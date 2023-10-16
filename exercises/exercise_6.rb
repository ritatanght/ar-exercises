require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Aleena", last_name: "Anderson", hourly_rate: 50)
@store1.employees.create(first_name: "Cormac", last_name: "Whitehead", hourly_rate: 45)

@store2.employees.create(first_name: "Betsy", last_name: "Mccarthy", hourly_rate: 40)
@store2.employees.create(first_name: "Kingsley", last_name: "Woods", hourly_rate: 65)
@store2.employees.create(first_name: "Jerry", last_name: "Hahn", hourly_rate: 100)

puts "Total employees: #{Employee.count}"