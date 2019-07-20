class Employee
# **`Employee`**

#   * `Employee.paid_over`
#     * takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
#   * `Employee.find_by_department`
#     * takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
#   * `Employee#tax_bracket`
#     * returns an `Array` of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
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

    def manager_name
        @manager.name
    end

    def paid_over 
        @@all.select do |employee|
            employee.salary > @salary
        end
    end
end
