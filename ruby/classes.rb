class Book
    attr_accessor :title, :author, :pages
end

book1 = Book.new()
book1.title =  "HP"
book1.author = "JK"
book1.pages = 400

puts book1.title
puts book1.pages
puts book1.author

book2 = Book.new()
