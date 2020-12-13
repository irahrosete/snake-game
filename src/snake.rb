class Snake
    attr_accessor :snake
    def initialize
        @positions = [[2,5], [2,6], [2,7]]
        @x = 2
        @y = 5
        @snake = "@"
        @body = "#"

    end

    def draw(board)
        board.board[@x][@y] = @snake
        board.draw
    end

end