require "tty-prompt"
system "clear"

puts "  _____ ____    ____  __  _    ___       ____   ____  ___ ___    ___ "
puts " / ___/|    \\  /    T|  l/ ]  /  _]     /    T /    T|   T   T  /  _]"
puts "(   \\_ |  _  YY  o  ||  ' /  /  [_     Y   __jY  o  || _   _ | /  [_ "
puts " \\__  T|  |  ||     ||    \\ Y    _]    |  T  ||     ||  \\_/  |Y    _]"
puts " /  \\ ||  |  ||  _  ||     Y|   [_     |  l_ ||  _  ||   |   ||   [_ "
puts " \\    ||  |  ||  |  ||  .  ||     T    |     ||  |  ||   |   ||     T"
puts "  \\___jl__j__jl__j__jl__j\\_jl_____j    l___,_jl__j__jl___j___jl_____j"

prompt = TTY::Prompt.new
puts "\n\n"
player = prompt.ask("Hi there! Welcome to the Snake Game. What is your name?\n", required: true)
puts "\nHi, #{player}!\n\n"

for option in (1..nil)
    option = prompt.select("Let's play.") do |menu|
        menu.choice "Start Game"
        menu.choice "How to Play"
        menu.choice "Top 10 Players"
        menu.choice "Exit"
    end

    case option
        when "Start Game"
            load 'game.rb'
            prompt.keypress("\nPress any key to continue.")
            system "clear"
        when "How to Play"
            load 'how-to-play.rb'
            prompt.keypress("Press any key to continue.")
            system "clear"
            next
        when "Top 10 Players"
            system "clear"
            puts "Top 10 Players\n\n"
            prompt.keypress("Press any key to continue.")
            system "clear"
            next
        when "Exit"
            system "clear"
            sleep 0.5
            puts "Goodbye!\n\n"
            exit
    end
end
