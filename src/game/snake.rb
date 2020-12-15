require "tty-prompt"

class Snake
    def initialize (board)
        @board = board
        @squares = board.squares
        @size = board.size
        @direction = {"x" => 0, "y" => 1}
    end

    def draw_snake
        @snake = []
        @row = @size - 16
        @col = 2
        (0..2).each do |s| # snake starts with length of 3 squares
            @squares[@row][@col + s] = "⬜" # to apply white square to the coordinates
            @snake[s] = {"x" => @row, "y" => @col + s} # to assign coordinates to each snake element
        end
    end

    def get_direction
        @direction
    end

    def move(direction)
        @direction = direction

        @tail_row = @snake[0]["x"]
        @tail_col = @snake[0]["y"]
        @head_row = @snake[@snake.length - 1]["x"]
        @head_col = @snake[@snake.length - 1]["y"]

        prompt = TTY::Prompt.new

        if @squares[@head_row + @direction["x"]][@head_col + @direction["y"]] == "⬜"
            puts "\nGame Over\n\n"
            prompt.keypress("Press Enter to continue", keys: [:return])
            load "../src/snake-game.rb"
        else
            @squares[@head_row + @direction["x"]][@head_col + @direction["y"]] = "⬜"
            @snake.push("x" => @head_row + @direction["x"], "y" => @head_col + @direction["y"])
            @currrent_direction = @direction
        end

        @squares[@tail_row][@tail_col] = "⬛"
        @snake.shift
    end
end