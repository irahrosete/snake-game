require "tty-prompt"

class Snake
    def initialize (board, prey)
        @board = board
        @prey = prey
        @squares = board.squares
        @size = board.size
        @direction = {"x" => 0, "y" => 1}
    end

    def draw_snake
        @snake = []
        @row = @size - 16
        @col = 2
        (0..2).each do |s| # snake starts with length of 3 squares
            @squares[@row][@col + s] = "⬜" # applies white square to the coordinates
            @snake[s] = {"x" => @row, "y" => @col + s} # assigns coordinates to each snake element
        end
    end

    def get_direction
        @direction
    end

    def move(direction)
        @direction = direction

        # identifies coordinates of snake tail
        @tail_row = @snake[0]["x"]
        @tail_col = @snake[0]["y"]
        # identifies coordinates of snake head
        @head_row = @snake[@snake.length - 1]["x"]
        @head_col = @snake[@snake.length - 1]["y"]

        prompt = TTY::Prompt.new

        if @squares[@head_row + @direction["x"]][@head_col + @direction["y"]] == "⬜" # head bumps into another white square
            puts "\n\e[41m\e[37m Game Over \e[0m\n\r"
            # \e[41m - red background
            # \e[37m - white text
            # \e[0m - clear format
            puts "Your score is #{@final_score}."
            prompt.keypress("Press Enter to continue", keys: [:return])
            load "../src/snake-game.rb"
        else
            # adds white square to head
            @squares[@head_row + @direction["x"]][@head_col + @direction["y"]] = "⬜"
            @snake.push("x" => @head_row + @direction["x"], "y" => @head_col + @direction["y"])
            # removes tail of snake by adding black square
            @squares[@tail_row][@tail_col] = "⬛"
            @snake.shift
        end

        if @head_row == @prey.target["x"] && @head_col == @prey.target["y"]
            @board.score += 1
            @prey.draw_prey
            @final_score = @board.score
        end

    end
end