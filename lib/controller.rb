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
        puts "Please type the number of the challenge you want"
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
            self.verify_name
        end
    end

    def pokemon_by_index
        Api.get_internet
        testIndex = 0
        currentScore = 0
        while testIndex != Pokemon.all.length # || input.capitalize != "Exit" 
            puts "What Pokemon is index #{Pokemon.all[testIndex].pokindex}?"
            input = gets.strip     
            if input.capitalize == Pokemon.all[testIndex].pokiname
                currentScore += 1
                puts "Correct! Your Score is: #{currentScore}"
                testIndex += 1
            elsif input.capitalize == "Exit" 
                puts "Your final score was #{currentScore}"
                self.verify_name
            else
                puts "Sorry the correct answer was #{Pokemon.all[testIndex].pokiname}"
                testIndex += 1
            end                 
        end
    end

    def exit_program
        abort("Thanks for visiting the Elite Four")
    end
end