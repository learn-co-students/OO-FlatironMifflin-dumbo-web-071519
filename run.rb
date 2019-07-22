require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

e1 = Employee.new("Ross", 25000, "Karen")
e2 = Employee.new("Cam", 21990, "Karen")
e3 = Employee.new("Shai", 21000, "Megan")
m1 = Manager.new("Karen", 45, "Media")
m2 = Manager.new("Megan", 58, "Obstruction")

binding.pry
puts "done"
