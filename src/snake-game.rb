require "tty-prompt"

system "clear"
prompt = TTY::Prompt.new
player = prompt.ask("Hi there! Welcome to the Snake Game. What is your name?\n", required: true)

puts "\nHi, #{player}!\n\n"

for option in (1..nil)
    option = prompt.select("Let's play.") do |menu|
        menu.choice "Start game"
        menu.choice "How to Play"
        menu.choice "Top 10 Players"
        menu.choice "Exit"
    end

    case option
        when "Start Game"
            # load 'game.rb'
        when "How to Play"
            system "clear"
            puts "How to Play the Snake Game\n\n"
            sleep 2
            puts "Collect as much food to feed the hungry snake 🐍."
            sleep 3
            puts "\nUse the ⬅️  ➡️  ⬆️  ⬇️  arrow keys on your keyboard to maneuver the snake."
            sleep 3
            puts "\nThe more food you collect,"
            sleep 1.5
            puts "the longer the snake becomes,"
            sleep 1.5
            puts "the higher your score!"
            sleep 3
            puts "\nMake sure not to collide the snake to its own body."
            sleep 3
            puts "Otherwise, Game Over. 🛑"
            sleep 3
            puts "\nYou can press:"
            sleep 1.5
            puts "p to pause"
            sleep 1.5
            puts "r to resume"
            sleep 1.5
            puts "q to quit"
            sleep 3
            puts "\nHave fun!\n\n"
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
