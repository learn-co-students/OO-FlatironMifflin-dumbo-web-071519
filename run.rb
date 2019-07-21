require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
  
pam = Manager.new("Pam", "Finanial Dep", 35)
john = Manager.new("Kohn", "HR Dep", 38)
doogs = Manager.new("Doogs", "Paper Dep", 31)


willow = Employee.new("Willow", 15000, pam)
joe = Employee.new("Joe", 18000, john)
sam = Employee.new("Sam", 21000, doogs)
scott = Employee.new("Scott", 23000, pam)
clarke = Employee.new("Clarke", 23000, doogs)
lisa = Employee.new("Lisa", 22000, john)
sarah = Employee.new("Sarah", 25000, john)

binding.pry
puts "done"
