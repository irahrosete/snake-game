class Snake
    def initialize (board)
        @board = board
        @squares = board.squares
        @size = board.size

    end

    def draw_snake
        @snake = []
        @row = @size - 2
        @col = 2
        (0..2).each do |s| # snake starts with length of 3 squares
            @squares[@row][@col + s] = "⬜" # to apply white square to the coordinates
            @snake[s] = {"x" => @row, "y" => @col + s} # to assign coordinates to each snake element
        end
    end







end