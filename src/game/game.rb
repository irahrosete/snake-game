require_relative "board"
require_relative "snake"
require_relative "prey"
require "io/console"

board = Board.new(18)
board.create_board_array

prey = Prey.new(board)
prey.draw_prey

snake = Snake.new(board, prey)
snake.draw_snake

# refreshes the screen to give the illusion of the snake moving
# screen refreshes when control is input
# need to figure out how to make the snake move again

# Thread.new do
    loop do
        snake.move(snake.get_direction)
        board.draw_board
        sleep 0.4
        snake.control
    end
# end
# loop do
    # snake.control
# end
