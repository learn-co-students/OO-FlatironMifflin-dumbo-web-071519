class Employee
    @@all = []

    attr_reader :name, :salary, :manager

    def initialize(name, salary, manager)
        @name = name
        @manager = manager
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        @manager.name
    end
    def self.paid_over(salary)
        @@all.select{|employee| employee.salary > salary}
    end
    def self.find_by_department(department)
        @@all.find{|employee| employee.manager.department == department} 
    end
    def tax_bracket
        @@all.select do |employee|
            employee.salary.between?((self.salary - 1000), (self.salary + 1000))
        end
    end
end
