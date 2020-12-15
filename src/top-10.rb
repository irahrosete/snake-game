require "tty-table"

puts "\nTop 10 Players\n\n"

table = TTY::Table.new([" Player "," Score "], [[" irah", " 1"], [" levi", " 2"]])

puts table.render(:ascii)
puts "\n"