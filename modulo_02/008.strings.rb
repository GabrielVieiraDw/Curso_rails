c = "curso"
    puts c.object_id
c = c + "rails"
  puts c
    puts c.object_id

r = "rails"
    puts r.object_id
r = r << "teste"
  puts r 
    puts r.object_id

x = "Gabriel"
y = 'Gabriel'

puts x.class
puts y.class

a = "curso"
b = "rails"

puts a << b
puts a + b
