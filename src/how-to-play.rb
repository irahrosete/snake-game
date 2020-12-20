require "pastel"

pastel = Pastel.new
puts pastel.green("\nHow to Play\n")
sleep 1.5
puts "Collect as much food to feed the hungry snake. 🐍\n\n"
sleep 2
puts "Use these keys on your keyboard to maneuver the snake:\n\n"
sleep 0.5
print pastel.white.on_blue(" w ")
print " UP\n"
sleep 0.5
print pastel.white.on_blue(" a ")
print " LEFT\n"
sleep 0.5
print pastel.white.on_blue(" s ")
print " DOWN\n"
sleep 0.5
print pastel.white.on_blue(" d ")
print " RIGHT\n\n"
sleep 2
puts "The more food you collect,"
sleep 1.5
puts "the longer the snake becomes,"
sleep 1.5
puts "the higher your score!\n\n"
sleep 3
puts "Make sure not to collide the snake to the walls or its own body."
sleep 3
puts "Otherwise, it's Game Over. 🛑\n\n"
sleep 3
puts "Have fun!\n\n"