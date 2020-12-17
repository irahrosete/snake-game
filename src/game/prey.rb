class Prey
    attr_reader :target
    def initialize(board)
        @squares = board.squares
        @size = board.size
    end

    def draw_prey
        # generates random integers for prey coordinates
        @prey_row = Random.new.rand(1..@size - 2)
        @prey_col = Random.new.rand(1..@size - 2)
        # @prey_row = 2
        # @prey_col = 10
        # assigns cookie to the generated coordinates
        @squares[@prey_row][@prey_col] = "🍪"
        @target = {"row" => @prey_row, "col" => @prey_col}

    end

end