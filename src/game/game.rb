require_relative 'board'
require_relative 'snake'

FPS = 30

board = Board.new
snake = Snake.new

board.draw
snake.draw(board)