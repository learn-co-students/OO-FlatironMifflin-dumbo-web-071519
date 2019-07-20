require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
michael = Manager.new("Michael", "paper", 50)
lisa = Manager.new("Lisa", "technology", 32)
bill = Manager.new("Bill", "human resources", 46)

tom = Employee.new("Tom", 20000, michael)
pam = Employee.new("Pam", 23000, bill)
george = Employee.new("George", 5000, lisa)
alice = Employee.new("Alice", 50000, michael)
kevin = Employee.new("Kevin", 70000, lisa)
paul = Employee.new("Paul", 12000, bill)

binding.pry
puts "done"
