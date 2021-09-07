#Hash
#h = { "x": 15, "curso": "rails" }

#puts h[:curso]

print "Insert your desired course: "
    c = gets.chomp

    h = {"x": c}
    if c != "test"
        puts "Inserted course is invalid"
    else
    puts "Selected course is: " << h[:x].to_s
    
end        
