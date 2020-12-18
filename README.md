# Snake Game

## Purpose and Scope

- describe at a high level what the application will do
- identify the problem it will solve and explain why you are developing it
- identify the target audience
- explain how a member of the target audience will use it
300 words

Snake is a game that surged to popularity in the late 90s and early 2000s when Nokia phones came preloaded with it. It is a classic game where a player starts with a short line that moves forward and is maneuvered within a bordered plane in order to eat items in the form of dots. The line keeps moving forward and grows in length according to the number of items eaten, resembling a snake. The aim of the game is to eat as much items without hitting the snake's own body, or in some versions, the borders.

This project aims to recreate the Snake game using Ruby. The project will apply object-oriented programming with the use of classes, defining methods and utilising algorithm knowledge that I've gained so far. In the process of developing the game, I also aim to learn more about grids and coordinates and collision detection, which are essential concepts to the game. In addition, I will also be learning about how to apply Ruby gems to make the game more interactive and use-friendly, as well as tapping into the power of APIs (Application Programming Interfaces). This will hopefully extend my Ruby knowledge and solidy my skills in programming.

The aim of the program is to entertain as well as provide some competitive incentive. There will be a scoring system. The score is updated and printed out as the game is played and a final score is printed out once the game is over. The program will have the ability to keep track of players that have played the game, and maintain a leaderboard. It will also have a notification system that can alert the top player in real-time once their score has been beaten.

The target audience is anyone from someone looking to have a break from a day's work, to someone who is looking to improve their basic coordination skills, to a master Snake gamer wanting to keep their lead recorded.

## Features

- at least three features
- describe each
- use of variables and the concept of variable scope
- loops and conditional control structures
- error handling
300 words
#### Game interface

The actual game will be housed in a window separate to the terminal to give a better user experience. There will be an ability to pause and quit the game once it is started, and to restart the game once over. The snake will be able to go through the canvas borders and come back in through the other side. The game will automatically finish once the snake hits its own body.
#### Scoring system
The game will keep track of the number of items that the snake eats: 1 point for every dot. The program will keep a record of the top 10 highest scoring players and their corresponding scores.
#### User Input
Player name will be asked at the start of the game. The player's name will show in the interface while the game is being played. The game will not start unless a name is provided. At the end of the game, the player has the option to input their email address if they wish to be included in the leader board. Players' scores will only be saved and included to the leader board if they provide an email address.
#### File Output
There will be an ability to save the list of Top 10 Players into a .txt file.
#### Menu
There will be a list of menu items to assist the player before a new game is played:
   - The **Start Game** function will start the game.
   - The **How to Play** function will give a description of the game and show the controls available to play the game as well as controls to pause, restart and halt the game.
   - The **Top 10 Players** function will retrieve a list of players currently in the top 10 and their corresponding top scores. This list will be printed out in the terminal but can also be printed out in a text file.
   - The **Exit** function will close the application.
#### Notification
The program will send an email notification to the current leader once a registered player beats their score. The notification will include the player name, the new top score, and the date when the new top score was recorded as well as an invitation to play the game again. No notification will be sent if the current top score remains the same. This notification assumes that a player who registers has given a valid email address.

## User Interface
The application will start in the terminal and take the user's name. Then the user is presented with the menu. The up and down arrow keys are used to choose from the four menu options: Start, How to Play, Top 10 Players, and Exit. Limiting input to these four options will eliminate user input error.

![snake-game-menu](docs/snake-game-menu.jpg)

When selected, information on how to play the game is printed out to the terminal. In the same way, when Top 10 Players option is selected, the Top 10 players and their scores are printed out to the terminal with an option to save the list as a text file.

![snake-game-how-to](docs/snake-game-how-to.jpg)
![snake-game-top10](docs/snake-game-top10.jpg)

The game starts with a fresh screen and once the game is over, the final score gets printed out. The user can then choose to save their score. If they choose to save, the score will get appended to a database in the form of a yaml file. This will then be available to calculate the new top 10 players once the user checks the Top 10 Players menu again. Both options will then bring the user back to the main menu.

![snake-game-start](docs/snake-game-start.jpg)
![snake-game-end](docs/snake-game-end.jpg)

## Control Flow
![snake-game-flowchart](./docs/snake-game02.png)
## Implementation Plan
Trello was used to implement the features of this application. The game was initially planned to utilise the Ruby2D gem but there were compatibility issues with using it in Ubuntu WSL. A decision was made to render the game raw on the terminal.

[Snake Game - Trello Board](https://trello.com/b/COkQo7qV)
![snake-game-trello-board](docs/snake-game-trello-board.jpg)

## Setup
#### Installation
As this application runs on Ruby, you will need to have Ruby installed on your system.
#### Dependencies
This application uses the following gems:
###### 1. ruby2D
  On Linux:
  - Follow instructions [here](https://www.ruby2d.com/learn/linux/#install-packages) to install a few packages before installing the gem.
  - Run `sudo apt-get update`.
  - Run `sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev`
  - And finally install the gem using `gem install ruby2d`.
  - If required, run `gem pristine ruby2d --version 0.9.4`

On Mac and Windows:
  - Install the gem using `gem install ruby2d`.
###### 2. TTY::Prompt
###### 3. net-smtp

#### System Requirements

Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements