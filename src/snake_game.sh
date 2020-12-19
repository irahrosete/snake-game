#! /bin/bash
clear
echo "Welcome to the Snake Game"
echo "Installing all required gems"
bundle install
gem update --system
echo "All gems installed"
echo "Running application..."
ruby snake-game.rb