
File.open("emp.txt", "r") do |file|
    puts file
    puts file.read()
end

fil = File.open("emp.txt", "r")
puts fil.read
fil.close()