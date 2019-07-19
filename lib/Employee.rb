class Employee

  attr_reader :name, :salary, :manager_name
  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name.name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(amount)
    self.all.select {|employee| employee.salary > amount}
  end

  def self.find_by_department(department)
    manager = Manager.all.find {|manager| manager.department == department}
    self.all.find {|employee| employee.manager_name == manager.name}
  end

  def tax_bracket
    Employee.all.select {|employee| (self.salary-1000..self.salary+1000)===employee.salary}
  end

end
