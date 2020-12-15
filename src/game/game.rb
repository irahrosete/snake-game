require_relative "board"
require_relative "snake"

board = Board.new(18)
board.create_board_array

snake = Snake.new(board)
snake.draw_snake

loop do
    snake.move(snake.get_direction)
    board.draw_board
    sleep 0.4
end
