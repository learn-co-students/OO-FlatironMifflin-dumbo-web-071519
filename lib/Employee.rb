class Employee
  @@all=[]
  attr_reader :name, :manager, :salary
  
  def initialize(name,salary, manager)
     @name = name
     @salary = salary
     @manager = manager
     @@all << self
  end

  def self.all
    @@all
  end
  def manager_name
    @manager
  end

  def self.paid_over(over_salary)
    @@all.select do |employee|
      employee.salary > over_salary
    end
  end

  def tax_bracket
    @@all.select do |employee|
        (employee.salary - @salary).abs >= 1000
    end
  end

  def self.find_by_department(dep_name)
    @@all.find do |employee|
        employee.manager.department == dep_name
    end
  end

end
