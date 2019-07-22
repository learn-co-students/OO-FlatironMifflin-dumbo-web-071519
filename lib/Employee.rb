class Employee
    @@all = []
    attr_reader  :name
    attr_accessor :manager, :salary

    def initialize(name, salary, manager)
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

    def self.paid_over(num)
        @@all.select {|employee| employee.salary > num}
    end

    def self.find_by_department(department)
        @@all.find {|employee| employee.manager.department == department}
    end

    def tax_bracket
        Employee.all.select{|employee| (self.salary-1000..self.salary+1000) === employee.salary}
        end

end
