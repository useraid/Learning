friends = Array["user", "aid"]
puts friends[1]
puts friends[0,1]

newarr = Array.new

newarr[0] = "Hello"
newarr[4] = "user aid"

puts friends
puts friends.length()
puts friends.include? "user"