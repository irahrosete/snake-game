require "tty-table"
require "tty-prompt"
require "yaml"

puts "\n\e[32mTop 10 Players\e[0m\n\n"

score = YAML.load_file("scores.yaml")
score.store(:annie, 11) # update this to accept new player name and score
File.open("scores.yaml", 'w') {|f| f.write score.to_yaml}
score = YAML.load_file("scores.yaml")

top_score = score.sort_by {|player, score| score}.reverse

table = TTY::Table.new(header: ["Player","Score"])
for i in 0...9
    table << top_score[i]
end

puts table.render(:ascii, padding: [0, 1, 0, 1])

prompt = TTY::Prompt.new
ans = prompt.select("\nWould you like to save the list?") do |menu|
        menu.choice "Yes"
        menu.choice "No"
end

if ans == "Yes"
    print_score = ""
    top_score.each {|player, score| print_score += "#{player}: #{score}\n"}
    File.open("top-10-players.txt", 'w') {|f| f.write print_score}
    puts "File saved.\n\n"
elsif ans == "No"
    puts "\n"
end