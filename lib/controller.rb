class Controller
    
    def initialize
        @user_name = ""
    end
    
    def welcome 
        puts "/// THE POKEDEX ///"
        self.prompt_for_name
    end

    def prompt_for_name
        puts "What is your name: "
        input = gets.strip
        @user_name = input.capitalize
        self.verify_name
    end

    def verify_name
        puts "Welcome to the ELITE FOUR POKEDEX TEST #{@user_name}"
        Api.get_internet
    end
end