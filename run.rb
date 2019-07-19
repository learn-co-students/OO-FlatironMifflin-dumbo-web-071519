require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

goldie = Manager.new("Goldie", "Diffusion", 27)
lila = Employee.new("Lila", 25000, goldie)
naomi = Employee.new("Naomi", 75000, goldie)

maxwell = Manager.new("Maxwell", "Architecture", 42)
doddard = Employee.new("Doddard", 120000, maxwell)
mista = Employee.new("Mista", 20000, maxwell)

Hope = Manager.new("Hope", "Bright Apple", 61)



binding.pry
puts "done"
