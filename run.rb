require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Ray Kroc", "Sales", 54)
m2 = Manager.new("Joe Wheeler", "Shipping", 35)

e1 = Employee.new("Axel", 45000, m1)
e2 = Employee.new("Kyle", 23800, m2)
e3 = Employee.new("Mark", 47500, m1)
e4 = Employee.new("Chris", 23500, m2)
e5 = Employee.new("Cathy", 48000, m1)
e6 = Employee.new("Carlos", 25000, m1) 



binding.pry
puts "done"
