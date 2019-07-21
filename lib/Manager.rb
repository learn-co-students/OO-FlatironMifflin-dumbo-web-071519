class Manager
    @@all = []

    attr_reader :name, :department, :age 

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        # @employees = []

        @@all << self
    end

    def employees
        Employee.all.select{|employee| employee.manager == self}
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map{|manager| manager.department}
    end


    def self.average_age
        all_ages = self.all.map{|manager| manager.age}
        all_ages.inject(0, :+).to_f / all_ages.count
    end

end
