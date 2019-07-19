class Manager
    @@all = []
    
    attr_reader :name, :age, :department

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end


    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.map do |manager|
            manager.department
        end
    end
    def self.average_age
        ages = @@all.map {|manager| manager.age}
        sum = ages.inject(0){|sum, i| sum + i}
        return (sum/ages.count).to_f 
    end
end
