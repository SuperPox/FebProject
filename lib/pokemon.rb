class Pokemon
    attr_accessor :pokindex, :pokiname

    @@all = []

    def initialize(number, name)
        @pokindex = number
        @pokiname = name
        @@all << self
        #Pokemon.all
    end

    def self.all
        @@all
        #binding.pry
    end
end

