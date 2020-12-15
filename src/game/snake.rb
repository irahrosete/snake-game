class Snake
    def initialize (board)
        @board = board

        @squares = board.squares
    end

    def draw
        @snake = []
        @row = 18 - 2
        @col = 1
        (0..2).each do |s|
            @squares[@row][@col + s] = "⬜" #apply white square to the coordinates
            @snake[s] = {"x" => @row, "y" => @col + s}
        end
    end



end