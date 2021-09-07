class Person
    attr_accessor :name
#    def initialize(name = "test")
#        @name = name
#    end
    
#    def set_name=(name)
#       @name = name
#    end
    
#   def get_name
#        @name
#    end    
end

p1 = Person.new
p1.name = "Gabriel" #setter
puts p1.name #getter