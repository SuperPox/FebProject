class Api

    def self.get_internet   
        url = URI("https://pokemon-go1.p.rapidapi.com/released_pokemon.json")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-key"] = '04a3b05c0emsh5544b3dd7f4f72ep1b321bjsn40c1ae0e0954'
        request["x-rapidapi-host"] = 'pokemon-go1.p.rapidapi.com'
        
        response = http.request(request)
        pokemon_id_hash = {}
        pokemon_id_hash = JSON.parse(response.read_body)

        pokemon_id_hash.each do |key, value|
            pokemon_number = value["id"]
            pokemon_name = value["name"] 
            Pokemon.new(pokemon_number, pokemon_name)  
        end
    end
end