class Pokemon
    attr_accessor :name

    @@all_pokemon = []

    def initialize(hash)
        
        hash.each do |key, value|
            value.each do |id, name|
                @pokemon_number = value["id"]
                @pokemon_name = value["name"]   
                @@all_pokemon << self     [#<Pokemon:0x000055822bcfeb00 @pokemon_name="Bulbasaur", @pokemon_number=1>]
                binding.pry
            end   
        end
    end

        # @number = number
        # @name = name
        # @@all_pokemon << self
        # binding.pry


    def self.all
        @@all_pokemon
    end

end