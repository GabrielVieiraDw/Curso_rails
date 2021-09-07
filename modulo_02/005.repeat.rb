#each
print "Insert a number to start couting: "
n = gets.chomp.to_i

(n..5).each do |n|
    puts "The read number was: " + n.to_s
end   

#while
#print "Insert a number to start counting: "
#n = gets.chomp.to_i

#while n <= 10 do 
    #puts "counting.... " + n.to_s
   #n += 1
#end    