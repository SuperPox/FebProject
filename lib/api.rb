class Api

    #@@url = "api.openweathermap.org/data/2.5/weather?zip={80239},{011}&appid={d4485939e8524148f364033033d03efb}"
    # @@url = "https://api.nasa.gov/neo/rest/v1/feed?(2021-1-30)&api_key=akR6IId75akUdpyOsKb3BNaW9Y5mgfp9Z0403Ok5"
    # @@key = "d4485939e8524148f364033033d03efb"

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
        #binding.pry
        Pokemon.new(pokemon_id_hash)
    end

    # pokemon_id_hash.each do |key, value|
    #     value.each do |id, name|
    #         pokemon_number = value["id"]
    #         pokemon_name = value["name"]        
    #         #binding.pry 
    #     end   
    #     Pokemon.new(pokemon_number, pokemon_name)
    #     #binding.pry
    # end
end

#pokemon_id_hash["1"]["name"]
# => "Bulbasaur"

# [1] pry(Api)> pokemon_id_hash
# => {"1"=>{"id"=>1, "name"=>"Bulbasaur"},

# [7] pry(Api)> value["id"]
# => 1
# [8] pry(Api)> value["name"]
# => "Bulbasaur"