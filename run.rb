require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1=Manager.new("John",30,"Analytics")
manager2=Manager.new("Cris",36,"Marketing")
employee1=manager1.hire_employee("Nick", 1200)
employee2=manager2.hire_employee("Oscar", 1500)
employee3=manager1.hire_employee("Bob", 2500)
Employee.find_by_department("Analytics")
binding.pry
puts "done"
