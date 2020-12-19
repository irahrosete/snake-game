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

# screen refreshes when control is input
thread = Thread.new do
    while !snake.game_over
        snake.control
    end
end

# refreshes the screen to give the illusion of the snake moving
while !snake.game_over
    snake.move(snake.get_direction)
    board.draw_board
    sleep 0.4
end
thread.kill
snake.end_game
snake.save_score
load "../src/snake-game.rb"