## Tests
| Feature        | Expected Outcome                                                                                                                                     | Actual Outcome |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------|----------------|
| User Input     | Welcome screen displays correctly                                                                                                                    | As expected    |
|                | App does not proceed from welcome screen if a name is not provided. App returns 'Value must be provided' and asks for a name again                   | As expected    |
|                | Ansi colour code outputs the player name in green                                                                                                    | As expected    |
|                |                                                                                                                                                      |                |
| Menu           | tty-prompt gem presents four menu options only: Start Game, How to Play, Top 10 Players, and Exit                                                    | As expected    |
|                | Snake Game ascii art title gets printed on the top of the screen always for menus How to Play, Top 10 Players and Exit                               | As expected    |
|                | Instructions on how to play the game gets printed on the screen with correct delay for each line when user selects How to Play option                | As expected    |
|                | Pastel gem outputs How to Play title in green                                                                                                        | As expected    |
|                | Pastel gem renders control keys w, a, s, d in white text and blue background                                                                         | As expected    |
|                | Top 10 players get printed on screen from the database when user selects Top 10 Players option                                                       | As expected    |
|                | Top 10 players get printed on screen as a table with the highest score on top of the list opposite the player name                                   | As expected    |
|                | Pastel gem outputs Top 10 Players title in green                                                                                                     | As expected    |
|                | tty-prompt gem presents option to save the top 10 list with two choices only: Yes and No                                                             | As expected    |
|                | Screen returns to main menu when prompted to press any key to continue from How to Play and Top 10 Players menus                                     | As expected    |
|                | Application closes with Goodbye message when Exit is selected                                                                                        | As expected    |
|                | Pastel gem outputs the Goodbye message in green                                                                                                      | As expected    |
|                | Game starts when Start Game is selected                                                                                                              | As expected    |
|                |                                                                                                                                                      |                |
| Game Interface | Game ends when snake hits any of the wall                                                                                                            | As expected    |
|                | Game ends when snake hits itself                                                                                                                     | As expected    |
|                | Game Over is shown when game ends                                                                                                                    | As expected    |
|                | Pastel gem renders Game Over in white text and red background                                                                                        | As expected    |
|                | Option to save score is shown when game ends with two choices only: Yes and No                                                                       | As expected    |
|                | App goes back to welcome screen after choosing between saving or not saving score                                                                    | As expected    |
|                | Snake intially moves to the right                                                                                                                    | As expected    |
|                | Snake continues to move until player presses control keys (w, a, s, d)                                                                               | As expected    |
|                | User is able to control snake with keys w, a, s, d while snake is moving a certain direction                                                         | As expected    |
|                | w directs the snake upward                                                                                                                           | As expected    |
|                | a directs the snake to the left                                                                                                                      | As expected    |
|                | s directs the snake downward                                                                                                                         | As expected    |
|                | d directs the snake to the right                                                                                                                     | As expected    |
|                | Snake gets longer when it hits prey                                                                                                                  | As expected    |
|                | Prey appears randomly within the borders                                                                                                             | As expected    |
|                | Player name is shown while the game is on                                                                                                            | As expected    |
|                | Pastel gem outputs the player name in green                                                                                                          | As expected    |
|                |                                                                                                                                                      |                |
| Scoring System | Score goes up by 1 when snake hits prey                                                                                                              | As expected    |
|                | Final score is shown when game ends                                                                                                                  | As expected    |
|                | Player name and score gets added to database when player chooses to save score                                                                       | As expected    |
|                | Player score gets updated in the database when player chooses to save score and player already exists                                                | As expected    |
|                |                                                                                                                                                      |                |
| File Output    | User is able to save Top 10 Players as a .txt file named top-10-players.txt                                                                          | As expected    |
|                | top-10-player.txt gets overwritten when user chooses to save the file again and top 10 players list has changed                                      | As expected    |
|                | Content of the top-10-players.txt file is presented with the top score on top opposite the player name, one line for each player name and score pair | As expected    |
|                |                                                                                                                                                      |                |
| Command Line   | App runs when ruby snake-game.rb is run                                                                                                              | As expected    |
|                | App shows version of the game when -v is paased as an argument to ruby snake-game.rb                                                                 | As expected    |
|                | App shows game info when -i is paased as an argument to ruby snake-game.rb                                                                           | As expected    |
|                | App shows control keys for the game when -c is paased as an argument to ruby snake-game.rb                                                           | As expected    |
|                | App shows help instructions when -h is paased as an argument to ruby snake-game.rb                                                                   | As expected    |
|                |                                                                                                                                                      |                |
| Script         | App runs when script ./snake_game.sh is run                                                                                                          | As expected    |
|                | Script installs all required gems                                                                                                                    | As expected    |