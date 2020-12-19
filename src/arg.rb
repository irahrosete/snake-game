def version
    puts "snake game 1.0.8"
    exit
end

v = ""
v = ARGV[0] if ARGV[0]
if v == "-v"
    version
end

def show_control
    puts "Use the following keys to control the snake:"
    puts "  w - UP"
    puts "  a - LEFT"
    puts "  s - DOWN"
    puts "  d - RIGHT"
    exit
end

c = ""
c = ARGV[0] if ARGV[0]
if c == "-c"
    show_control
end

def help
    puts "Usage: snake game"
    puts "  -c  show game control keys"
    puts "  -i  show game info"
    puts "  -v  print the version number"
    puts "  -h  show this message"
    exit
end

h = ""
h = ARGV[0] if ARGV[0]
if h == "-h"
    help
end

def info
    puts "Snake Game is a classic 2D game played within a bordered plane."
    puts "The player maneuvers a line that grows in length by eating items around the plane."
    puts "The aim is to eat as much items without hitting the snake's own body or the borders."
    exit
end

i = ""
i = ARGV[0] if ARGV[0]
if i == "-i"
    info
end