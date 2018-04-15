class Person
    attr_accessor :name, :surname, :age

    def initialize(name, surname, age)
        @name = name
        @surname = surname
        @age = age
    end
    
    # just for example of Overloading 
    def introduce
        "My name is: #{@name} #{@surname} and I am #{@age} years old"
    end


end
