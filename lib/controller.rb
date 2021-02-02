class Controller
    
    def initialize
        @user_name = ""
    end
    
    def welcome 
        puts "/// THE POKEDEX CHALLENGE ///"
        self.prompt_for_name
    end

    def prompt_for_name
        puts "What is your name Challenger?"
        input = gets.strip
        @user_name = input.capitalize
        self.verify_name
    end

    def verify_name
        puts "Welcome to the ELITE FOUR POKEDEX TEST #{@user_name}!"
        puts "Please Select Your Challenge!"
        puts "(tip: type the number of the challenge you want)"
        puts "1. List Pokemon by Index"
        self.challenge_select
        #Api.get_internet
    end

    def challenge_select
        input = gets.strip
        if input == "1" || "1." || "List Pokemon by Index"
            puts "You Selected: List Pokemon by Index"
            self.pokemon_by_index
        else
            puts "Invalid Input // Please type just a number. Eg: 1 "
            #self.verify_name
        end
    end

    def pokemon_by_index
        Api.get_internet
        #binding.pry
        puts "What Pokemon is index #{Pokemon.all[0].pokindex}?"
        input = gets.strip
        if input.capitalize == Pokemon.all[0].pokiname
            puts "Congratulations!"
        else
            puts "The correct answer was #{Pokemon.all[0].pokiname}"
        end
    end

end