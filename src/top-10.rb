require "tty-table"

puts "\n\e[32mTop 10 Players\e[0m\n\n"

score = {
    :irah => 10,
    :levi => 2,
    :ana => 5,
    :lyka => 3,
    :bob => 20,
    :carol => 15,
    :ange => 12,
    :jim => 9,
    :rog => 6,
    :shaz => 5,
    :greg => 23
}

top_score = score.sort_by {|player, score| score}.reverse

table = TTY::Table.new(header: ["Player","Score"])
for i in 0...9
    table << top_score[i]
end

puts table.render(:ascii, padding: [0, 1, 0, 1])
puts "\nWould you like to save the list? (y/n)"
ans = gets.chomp

if ans == "y".downcase
    File.open("top-10-players.txt", 'w') {|f| f.write top_score}
    puts "File saved.\n\n"
elsif ans == "n".downcase
    puts "\n"
else
    puts "Invalid answer.\n\n"
end