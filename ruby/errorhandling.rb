begin
    num = 10 / 0
rescue ZeroDivisionError => err
    puts "Div error"
    
end

puts err # printing saved error