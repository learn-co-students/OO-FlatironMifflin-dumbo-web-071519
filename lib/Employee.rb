class Employee
    @@all = []
    
    attr_reader :name, :salary, :manager

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
       self.all.select{|employee| employee.salary > salary} 
    end

    def self.find_by_department(department)
        self.all.select{|employee| employee.manager.department == department}
    end

    def tax_bracket
        min = self.salary-1000
        max = self.salary+1000
        Employee.all.select do |employee|
            employee.salary.between?(min,max) && employee != self
        end
    end

end
