require_relative 'board'
require_relative 'snake'

board = Board.new(18)
# snake = Snake.new(board)

board.create_board_array
board.draw_board
# snake.draw
