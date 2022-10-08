def pow(base_num, power)
    result = 1
    power.times do |index|
        result = result * base_num
    end
    return result
end

puts pow(2,5)