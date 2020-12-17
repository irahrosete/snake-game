require_relative "board"
require_relative "snake"
require_relative "prey"

board = Board.new(18)
board.create_board_array

snake = Snake.new(board)
snake.draw_snake

prey = Prey.new(board)
prey.draw_prey

# refreshes the screen to give the illusion of the snake moving
loop do
    snake.move(snake.get_direction)
    board.draw_board
    sleep 0.4
end
