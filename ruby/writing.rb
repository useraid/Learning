File.open("emp.txt", "a") do |file|
    file.write("\noscar, accounting")
end

File.open("emp.txt", "r") do |file|
    puts file.read
end