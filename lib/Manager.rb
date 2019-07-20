class Manager
# **`Manager`**
#   * `Manager#name`
#     * returns a `String` that is the manager's name

#   * `Manager#department`
#     * returns a `String` that is the department that the manager oversees

#   * `Manager#age`
#     * returns a `Fixnum` that is the age of the manager

#   * `Manager#employees`
#     * returns an `Array` of all the employees that the manager oversees

#   * `Manager#hire_employee`
#     * takes a `String` argument and a `Fixnum` argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees

#   * `Manager.all_departments`
#     * returns an `Array` of all the department names that every manager oversees

#   * `Manager.average_age`
#     * returns a `Float` that is the average age of all the managers
       
    attr_accessor :name, :department, :age
    @@all = [] 
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

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    def self.age 
        self.all.map do |manager|
            manager.age
        end
    end
    def self.average_age
        self.age.sum / self.age.count
    end
    def self.all
        @@all
    end

end
