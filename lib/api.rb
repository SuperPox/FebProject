class Api

    @@url = "https://api.nasa.gov/neo/rest/v1/feed?(2021-1-30)&api_key=akR6IId75akUdpyOsKb3BNaW9Y5mgfp9Z0403Ok5"
    @@key = "akR6IId75akUdpyOsKb3BNaW9Y5mgfp9Z0403Ok5"

    def self.get_internet
        response = HTTParty.get(@@url)
        #binding.pry
    
    end

end