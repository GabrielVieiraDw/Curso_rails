class Person
    def speak 
     "hello! people"
    end

    def my_id
        "My id is #{self.object_id}"
    end    
end

p1 = Person.new
puts p1.my_id

p2 = Person.new
puts p2.my_id