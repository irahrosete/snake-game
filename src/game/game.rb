require_relative 'board'
require_relative 'snake'

board = Board.new
snake = Snake.new(board)

board.draw
snake.draw

#to somehow make the snake move. test this.
board.redraw_board
