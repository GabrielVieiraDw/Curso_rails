#Istructure ternarie true or false
print "Insert your gender: "
gender = gets.chomp

 if gender == "M" or "m" ? (puts "Male") : (puts "Female")

end 

#CASE
puts "Insert your age: "
age = gets.chomp.to_i

case age
 when 0..2
    puts "it is a baby"
 when 3..10
    puts "it is a child"
 when 11..17
    puts "it is a teenager"
 when 18..64
    puts "it is an adult"
 else
    puts "it is an old person"  
 end     
 
 puts "=====================" 

#IF
print "Insert a number: "
Number = gets.chomp.to_i
 if Number > 2
    puts "Inserted number is bigger than 2"
 else
    puts "False"   
end

puts "====================="

#UNLESS

print "Insert a number: "
 N = gets.chomp.to_i
unless N >=2
    puts "Number is shorter than 2"
else
    puts "Number is bigger than 2"
end
