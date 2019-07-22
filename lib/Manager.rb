require 'pry'
class Manager
    @@all = []
    attr_reader :name, :age, :department


    def initialize(name, age, department)
        @name=name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.map {|employee| employee.manager == self.name}
    end

    def hire_employee(name, salary)
        Employee.new(name, age, self)
    end

    def self.all_departments
        @@all.map(&:department)
    end

    def self.average_age
        @@all.map{|manager| manager.age}.reduce{|sum, el| sum += el}.to_f / @@all.count 
    end

end
