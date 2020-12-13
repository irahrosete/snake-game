class Snake
    attr_accessor :snake
    def initialize
        @positions = [[10,14], [10,15]]
        @x = 2
        @y = 5
        @snake = "@"
        @body = "#"


    end

    def draw(board)
        board.board[@x][@y] = @snake
        board.draw
    end

    def print_body(board)
        body_x = @body_path[1][0]
        body_y = @body_path[1][1]
        board.board[body_x][body_y] = @body
    end

    def body_end(board)
        body_end_x = @body_path[1 + @length][0]
        body_end_y = @body_path[1 + @length][1]
        board.board[body_end_x][body_end_y] = " "
        @body_path.pop
    end

    # print_body(board)
end