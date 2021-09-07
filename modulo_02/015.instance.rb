class Person
    def initialize(given_name = "homeless")
        @name = given_name
    end
    
    def print_name
        @name
    end    
    
    def speak 
     "hello! people"
    end
end

p1 = Person.new
puts p1.print_name

p2 = Person.new("Gabriel")
puts p2.print_name