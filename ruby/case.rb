def get_day(day)
    day_name = ""

    case day
    when "mon"
        day_name = "monday"
    when "tue"
        day_name = "tuesday"
    when "wed"
        day_name = "wednesday"
    end

    return day_name
end
puts get_day("tue")