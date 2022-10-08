module Tools
    def sayhi(name)
        puts ("hi "+name)
    end
end

include Tools
Tools.sayhi("user")