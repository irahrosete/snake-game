require "tty-prompt"
require "pastel"
require_relative "arg"
require_relative "title"

prompt = TTY::Prompt.new
$player = prompt.ask("\nHi there! Welcome to the Snake Game. What is your name?\n", required: true)

sleep 1
system "clear"

def clear
    sleep 0.5
    system "clear"
    load "title.rb"
    sleep 0.5
end

loop do
    load "title.rb"
    option = prompt.select("\nHi, \e[32m#{$player.upcase}\e[0m! Let's play.") do |menu|
        # \e[32m - green text
        # \e[0m - clear format
        menu.choice "Start Game"
        menu.choice "How to Play"
        menu.choice "Top 10 Players"
        menu.choice "Exit"
    end

    case option
        when "Start Game"
            sleep 0.5
            load "./game/game.rb"
            system "clear"
        when "How to Play"
            clear
            load "how-to-play.rb"
            prompt.keypress("Press any key to continue.")
            system "clear"
            next
        when "Top 10 Players"
            clear
            load "top-10.rb"
            prompt.keypress("Press any key to continue.")
            system "clear"
            next
        when "Exit"
            clear
            pastel = Pastel.new
            puts "\n"
            puts pastel.green("Goodbye!")
            puts "\n"
            exit
    end
end
