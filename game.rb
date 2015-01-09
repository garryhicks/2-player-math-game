require 'byebug'
require './functions.rb'

@player_one_lives == 3
@player_two_lives == 3

def intro
  puts "Please enter your name, Player 1: "
  player1 = gets.chomp
  puts "Thank you, #{player1}"
  puts "Please enter your name, Player 2: "
  player2 = gets.chomp
  puts "Thank you, #{player1}"
  puts "Welcome to the game!"
end

def main
  p intro
  p 
  puts generate_question
  prompt_player
  verify_answer
end

p run()
