require "pastel"

class Board
    attr_reader :squares, :size
    attr_accessor :score

    def initialize(size)
        @size = size
        @score = 0
    end

    def create_board_array
        @squares = []
        (0..@size-1).each do |row|
            @row = []
            (0..@size-1).each do |col|
                if row.between?(1, @size - 2) && col.between?(1, @size - 2)
                    @row << "⬛"
                else
                    @row << "⬜"
                end
            end
            @squares << @row # returns nil
        end
    end

    def draw_board
        pastel = Pastel.new
        system "clear"
        puts pastel.green($player.upcase)
        puts "\rSCORE #{@score}\r\n\n"
        @squares.each do |row|
            row.each do |col|
                print col # prints the squares
            end
            puts "\r"
        end
    end
end