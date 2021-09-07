class Person
    def initialize(cont = 2)
        cont.times do |i|
        puts "Initializing... #{i}"
        end
    end

    def speak(text = "Hello People!")
        text
    end
    
    def speak2(name = "people")
        "Hello #{name}!"
    end

    def speak3(text = "Hello", text2 = "people")
        "#{text} #{text2}!"
    end
end

p1 = Person.new
puts p1.speak()
puts p1.speak2()
puts p1.speak3("hi", "how are you")

p2 = Person.new(5)

#class Person
#    puts "Insert your name: "
#    p = gets.chomp
    
#    def speak (x = "hello #{p}")
#        speak  
#    end
#end

#x = Person.new
#puts x.speak