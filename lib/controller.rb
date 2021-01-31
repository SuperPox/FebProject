class Controller
    
    def initialize
        @user_name = ""
    end
    
    def welcome 
        puts "/// THE DUNGEON ///"
        self.prompt_for_name
    end

    def prompt_for_name
        puts "What is your name: "
        input = gets.strip
        @user_name = input.capitalize
        self.verify_name
    end

    def verify_name
        puts "Welcome to the Dungeon #{@user_name}"
    end
end