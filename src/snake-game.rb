require "tty-prompt"
system "clear"

load 'title.rb'

prompt = TTY::Prompt.new
player = prompt.ask("\nHi there! Welcome to the Snake Game. What is your name?\n", required: true)
sleep 2
system "clear"

def clear
    system "clear"
    load 'title.rb'
    sleep 0.5
end

for option in (1..nil)
    load 'title.rb'
    option = prompt.select("\nHi, #{player}! Let's play.") do |menu|
        menu.choice "Start Game"
        menu.choice "How to Play"
        menu.choice "Top 10 Players"
        menu.choice "Exit"
    end

    case option
        when "Start Game"
            load 'game.rb'
            prompt.keypress("\nPress spacebar to quit", keys: [:space])
            system "clear"
        when "How to Play"
            clear
            load 'how-to-play.rb'
            prompt.keypress("Press any key to continue.")
            system "clear"
            next
        when "Top 10 Players"
            clear
            puts "\nTop 10 Players\n\n"
            prompt.keypress("Press any key to continue.")
            system "clear"
            next
        when "Exit"
            clear
            puts "\nGoodbye!\n\n"
            exit
    end
end