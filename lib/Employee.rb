class Employee

    attr_reader :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        @@all << self
    end

    def manager_name
        manager.name
    end

    def self.all
        @@all
    end

    def self.paid_over(fixnum)
        self.all.select {|employee| employee.salary > fixnum }
    end

    def self.find_by_department(string)
        Employee.all.find do |employee|
            if employee.manager.department == string
                return employee
            end
        end
    end

    def tax_bracket
        Employee.all.select do |employee|
            self.salary.between?(employee.salary - 1000,employee.salary + 1000)
        end
    end

end
