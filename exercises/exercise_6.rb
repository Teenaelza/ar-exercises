require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Rae", last_name: "Khan", hourly_rate: 70)
@store1.employees.create(first_name: "John", last_name: "thaliath", hourly_rate: 40)
@store1.employees.create(first_name: "Asmi", last_name: "thaliath", hourly_rate: 80)
@store2.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "RaLALe", last_name: "Khan", hourly_rate: 20)
@store2.employees.create(first_name: "JoJsifinhn", last_name: "thalikrayath", hourly_rate: 40)
@store2.employees.create(first_name: "RIA", last_name: "thaliath", hourly_rate: 10)

puts Employee.all.count