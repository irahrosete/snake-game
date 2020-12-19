require "tty-prompt"
require "yaml"

class Snake
    attr_reader :game_over
    def initialize (board, prey)
        @board = board
        @prey = prey
        @squares = board.squares
        @size = board.size
        @direction = {"row" => 0, "col" => 1} # default direction is to the right. moves 0 rows and 1 column
        $final_score = 0
        @game_over = false
    end

    def draw_snake
        @snake = []
        @row = @size - 16
        @col = 2
        (0..2).each do |s| # snake starts with length of 3 squares
            @squares[@row][@col + s] = "⬜" # applies white square to the coordinates
            @snake[s] = {"row" => @row, "col" => @col + s} # assigns coordinates to each snake element
        end
    end

    def get_direction
        @direction
    end

    def move(direction)
        @direction = direction

        # identifies coordinates of snake tail
        @tail_row = @snake[0]["row"]
        @tail_col = @snake[0]["col"]
        # identifies coordinates of snake head
        @head_row = @snake[@snake.length - 1]["row"]
        @head_col = @snake[@snake.length - 1]["col"]

        if @squares[@head_row + @direction["row"]][@head_col + @direction["col"]] == "⬜" # head bumps into another white square
            @game_over = true
            # end_game
        else
            # adds white square to head
            @squares[@head_row + @direction["row"]][@head_col + @direction["col"]] = "⬜"
            @snake.push("row" => @head_row + @direction["row"], "col" => @head_col + @direction["col"])
        end

        if @head_row == @prey.target["row"] && @head_col == @prey.target["col"]
            @board.score += 1
            @prey.draw_prey
            $final_score = @board.score
        else
            # removes tail of snake by adding black square
            @squares[@tail_row][@tail_col] = "⬛"
            @snake.shift
        end
    end

    def end_game
        puts "\n\e[41m\e[37m Game Over \e[0m\n\r"
        # \e[41m - red background
        # \e[37m - white text
        # \e[0m - clear format
        puts "Your score is #{$final_score}.\n\r"
    end

    def save_score
        prompt = TTY::Prompt.new
        ans = prompt.select("Would you like to save your score?") do |menu|
            menu.choice "Yes"
            menu.choice "No"
        end

        if ans == "Yes"
            score = YAML.load_file("../src/scores.yaml")
            score.store($player.downcase.to_sym, $final_score) # update this to accept new player name and score
            File.open("scores.yaml", 'w') {|f| f.write score.to_yaml}
            puts "\n\rScore saved.\n\r"
        elsif ans == "No"
            puts "\r"
        end
        prompt.keypress("Press Enter to continue", keys: [:return])
    end

    def control
        input = STDIN.getch
        up = "w"
        down = "s"
        right = "d"
        left = "a"

        if input == up
            @direction = {"row" => -1, "col" => 0}
        elsif input == down
            @direction = {"row" => 1, "col" => 0}
        elsif input == right
            @direction = {"row" => 0, "col" => 1}
        elsif input == left
            @direction = {"row" => 0, "col" => -1}
        end
    end

end