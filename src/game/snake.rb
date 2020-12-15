class Snake
    attr_accessor :direction #:snake
    def initialize (board)
        @board = board

        @squares = board.squares
    end

    def draw
        @snake = []
        @row = 18 - 2
        @col = 1
        (0..2).each do |s| # snake starts with length of 3 squares
            @squares[@row][@col + s] = "⬜" # to apply white square to the coordinates
            @snake[s] = {"x" => @row, "y" => @col + s} # to assign coordinates to each snake element
        end
        pp @snake
    end

    def game_over
        puts "Game Over"
        exit
    end


    @direction = {"x" => 0, "y" => 1} # default direction going right

    def move (direction)
        @direction = direction

        #coordinates for the first element is the tail
        @row_tail = @snake[0]["x"]
        @col_tail = @snake[0]["y"]
        # coordinates for the last element is the head
        @row_head = @snake[@snake.length - 1]["x"]
        @col_head = @snake[@snake.length - 1]["y"]

        unless @current_direction.nil?
            if @direction["x"] == @current_direction["x"] * -1 || @direction["y"] == @current_direction["y"] * -1
                @direction = @current_direction
            end
        end

        if @squares[@row_head + @direction["x"]][@col_head + @direction["y"]] == "⬜"
            game_over
        else
            @squares[@row_head + @direction["x"]][@col_head + @direction["y"]] = "⬜"
            @snake.push("x" => @row_head + @direction["x"], "y" => @col_head + @direction["y"])
            @current_direction = @direction
        end

        @squares[@row_tail][@col_tail] = "⬛"
        @snake.shift

    end



end