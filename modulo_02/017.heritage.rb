class Person
    attr_accessor :name, :email, :bussinnes
end

class PF < Person
    attr_accessor :cpf

    def speak(text)
        text
    end
end        

class PJ < Person
    attr_accessor :cnpj

    def pay_dealers
        "Paying Dealers..."
    end
end

p1 = Person.new
    puts "Insert your name: "
    name = gets.chomp
    puts "Insert your e-mail: "
    email = gets.chomp
            
#setter
p1.name = name
p1.email = email
p1.bussinnes = "Concept"

#getter
#puts p1.name
#puts p1.email
#puts p1.bussinnes

puts "------------------------------"

p2 = PF.new
#setter
p2.cpf = "08212452956"

#getter
puts p1.name
puts p1.email
puts p2.cpf

puts p2.speak("Hello!")

puts "------------------------------"

p3 = PJ.new
#setter
p3.cnpj = "40173980/0001-48"

#getter
puts p1.name
puts p1.email
puts p3.cnpj

puts p3.pay_dealers