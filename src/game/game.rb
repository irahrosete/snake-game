require_relative "board"
require_relative "snake"
require_relative "prey"

board = Board.new(18)
board.create_board_array

prey = Prey.new(board)
prey.draw_prey

snake = Snake.new(board, prey)
snake.draw_snake

# refreshes the screen to give the illusion of the snake moving
loop do
    snake.move(snake.get_direction)
    board.draw_board
    sleep 0.4
end
