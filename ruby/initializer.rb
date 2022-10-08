class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages

        
    end
end

book1 = Book.new("HP", "JK", 400)
book2 = Book.new("LOTR", "tolkien", 500)
