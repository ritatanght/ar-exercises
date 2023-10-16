require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

#Your code goes here ...
print "Enter a store name: "
store_name = gets.chomp
store = Store.create(name: store_name)

store.errors.each do |error|
  puts "Validation Error: #{error.full_message}"
end

# create employee without attaching to a store
# employee1 = Employee.create(first_name: "Ruby", last_name: "Gem", hourly_rate: 80)
# employee1.errors.each do |error|
#   puts "Validation Error: #{error.full_message}"
# end