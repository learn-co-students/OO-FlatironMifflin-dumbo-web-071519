require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("JIM", "Accting", 20)
m2 = Manager.new("DEREK", "Accting", 30)
m3 = Manager.new("BICE", "Shipping", 50)

e1 = Employee.new("bob", 25000, m1)
e2 = Employee.new("bark", 26000, m1)
e3 = Employee.new("baz", 50000, m1)
e4 = Employee.new("foo", 50000, m2)
e5 = Employee.new("fie", 30000, m2)
e6 = Employee.new("fum", 52000, m3)


binding.pry
puts "done"
