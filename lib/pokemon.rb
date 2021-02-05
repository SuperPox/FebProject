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
end

