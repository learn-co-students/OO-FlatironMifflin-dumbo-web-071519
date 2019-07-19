class Manager

  attr_reader :name, :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select {|employee| employee.manager_name == self.name}
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end

  def self.all_departments
    self.all.map {|manager| manager.departmentd}
  end

  def self.average_age
    ages = self.all.map {|manager| manager.age}
    ages.sum.to_f / ages.size
  end

end
