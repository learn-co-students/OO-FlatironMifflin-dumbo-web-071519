class Manager
    @@all=[]
    @@all_departments=[]
    @@all_age=[]
    attr_reader :name, :age, :department
    
    def initialize(name,age,department)
       @name=name
       @department=department
       @age=age
       @@all << self
       @@all_departments << department
       @@all_age << age
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
       Employee.new(name,salary,self)
    end

    def self.all_departments
       @@all_departments
    end
   
    def self.average_age
      sum=0
      @all_age.map do |age|
        sum+=age
      end
      sum/@@all_age.count
    end
end
