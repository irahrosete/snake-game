require "tty-prompt"

system "clear"
prompt = TTY::Prompt.new
player = prompt.ask("Hi there! Welcome to the Snake Game. What is your name?\n", required: true)

puts "\nHi, #{player}!\n\n"

option = prompt.select("Let's play.") do |menu|
    menu.choice "Start game"
    menu.choice "How to Play"
    menu.choice "Top 10 Players"
    menu.choice "Exit"
end

case option
    when "Start Game"

    when "How to Play"
    when "Top 10 Players"
        puts "\nTop 10 Players"

    when "Exit"
        system "clear"
        sleep 1
        puts "Goodbye!\n\n"
        exit
end