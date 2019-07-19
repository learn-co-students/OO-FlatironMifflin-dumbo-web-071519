class Manager

    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age

        @@all << self

    end

    def employees
        Employee.all.select {|employee| employee.manager == self }
    end

    def self.all
        @@all
    end

    def hire_employee(string, fixnum)
        Employee.new(string, fixnum, self)
    end

    def self.all_departments
        Manager.all.map{|manager| manager.department}
    end

    def self.average_age #Check if there is more efficient way
        total_age = 0.0
        ages = Manager.all.map {|manager| total_age += manager.age}
        total_age /= ages.size
        return total_age
    end

end
