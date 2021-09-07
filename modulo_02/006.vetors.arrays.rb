#v = [[11,12,13],[21,22,23],[31,32,33]]
 
#v.each do |externo|
#    externo.each do |interno|
#    puts interno    
# end
#end

print "Insert your name: "
n = gets.chomp

print "Insert your surname: "
s = gets.chomp

v = [[n],[s]]
    v.each do |e|
        e.each do |i|
    puts 'Hello ' + i[0,8].to_s #+ i[8].to_s
 end
end

#print "Insert your name: "
#name = gets.chomp

#v = [name]
#v = [15,62,73,48]
#    v.each do |i|
#    puts 'Hello! ' + i[0].to_s
#end

#v = [] (Array.new - orientado)
    #v.push("Hello!")
    #v.push("Let's start")

    #puts v
#end

