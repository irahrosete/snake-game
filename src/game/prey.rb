class Prey
    def initialize(board)
        @squares = board.squares

    end

    def draw_prey
        @prey_row = Random.new.rand(1..16)
        @prey_col = Random.new.rand(1..16)

        @squares[@prey_row][@prey_col] = "🍪"
    end

end