class Pokemon
    attr_accessor :pokindex, :pokiname
    @@all = []

    def initialize(number, name)
        @pokindex = number
        @pokiname = name
        @@all << self
    end

    def self.all
        @@all

    end

    # class method called search => all the pokemons that start with that car
    def self.search(char)
        firstLetterArr = []       
        self.all.each do |x|  
            if x.pokiname[0] == char.capitalize    #self.all[0].pokiname[0] = "B"  // char.capitalize = "B"
                firstLetterArr << x.pokiname
            else
                nil
            end 
        end
        return firstLetterArr 
    end

end

