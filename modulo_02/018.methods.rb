class Person
    def speak #instance method
     "hello! people"
    end  
    
    def self.scream(text) #because I am using "self" I do not need to instance for example p1 = Person.new
    "#{text}!!!"
    end
end

#p1 = Person.new
#puts p1.speak

puts "Insert: "
text = gets.chomp

puts Person.scream(text)