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
        puts "Welcome to the ELITE FOUR #{@user_name}!"
        self.challenge_select
    end

    def challenge_select
        puts "/////////////////////////////////////////////////"
        puts "Please type the number of the activity you want"
        puts "  1. Learn: Pokemon by Index"
        puts "  2. Challenge: List Pokemon by Index"
        puts "  3. Exit Program"
        puts "/////////////////////////////////////////////////"
        input = gets.strip
        if input == "1" 
            self.index_to_pokemon
        elsif input == "2"
            self.pokemon_by_index
        elsif input == "3"
            self.exit_program
        else
            puts "Invalid Input // Please type just a number. Eg: 1 "
            self.verify_name
        end
    end

    def index_to_pokemon
        if Pokemon.all == []
            Api.get_internet
        end
        testIndex = 0
        while testIndex != Pokemon.all.length
            puts "// Learn a Pokemon's Index by typing a number //"
            input = gets.strip.to_i # 1 will equal index 0
            if input-1 >= 0 && input <= Pokemon.all.length
                puts "Pokemon Index #{input} is #{Pokemon.all[input-1].pokiname}"
            elsif input == 0
                self.verify_name
            else 
                self.verify_name
            end
        end
    end

    def pokemon_by_index
        if Pokemon.all == []
            Api.get_internet
        end
        testIndex = 0
        currentScore = 0
        while testIndex != Pokemon.all.length 
            puts "// What Pokemon is index #{Pokemon.all[testIndex].pokindex}? //"
            input = gets.strip     
            if input.capitalize == Pokemon.all[testIndex].pokiname
                currentScore += 1
                puts "CORRECT! Your Score is: #{currentScore}"
                testIndex += 1
            elsif input.capitalize == "Exit" 
                puts "#{@username} your final score was #{currentScore}"
                self.verify_name
            else
                puts "Sorry the correct answer was #{Pokemon.all[testIndex].pokiname}"
                testIndex += 1
            end                 
        end
    end

    def exit_program
        abort("Thanks for visiting the Elite Four!")
    end
end