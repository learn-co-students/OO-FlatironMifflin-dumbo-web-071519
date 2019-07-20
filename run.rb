require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

mgr1 = Manager.new("Bob", "HR", 35)
mgr2 = Manager.new("Julissa", "IT", 44)


e1 = Employee.new("Jana", 81000, mgr1)
e2 = Employee.new("Henry", 92000, mgr1)
e3 = Employee.new("Maria", 91000, mgr2)
e4 = Employee.new("Herbert", 82000, mgr2)
e5 = Employee.new("Emma", 81500, mgr1)

binding.pry
puts "done"
