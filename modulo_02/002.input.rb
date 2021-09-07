puts "Insert your name"
name = gets.chomp

puts "Your name is " + name

puts "================"

puts name.inspect

puts "================"

puts "What is your wage"
wage = gets.chomp.to_f

puts "Your updated wage is " +  (wage * 1.10).to_s

