class Employee

    attr_accessor :name, :salary, :manager 

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.paid_over(base_salary)
        self.all.select do |employee|
            employee.salary > base_salary
        end
    end
    
    def self.find_by_department(department1)
        self.all.find do |employee|
            employee.manager.department == department1
        end
    end

    def tax_bracket
        Employee.all.select do |employee|
            (self.salary - employee.salary).abs <= 1000
        end
    end







    # def self.find_by_department(department)
    #     self.all.find do |employee|
    #         employee.manager_id.department == self
    #     end
    # end 

   



end