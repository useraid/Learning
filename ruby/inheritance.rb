class Book
    attr_accessor :title, :author, :pages
    def make_sandwich
        puts "Sandwich"
    end
    
    def make_salad
        puts "salad"
    end
end

class Cookbook < Book
    def make_pasta
        puts "pasta"
    end

end

cooker = Cookbook.new()

cooker.make_salad
