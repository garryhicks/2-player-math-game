require 'byebug'
require './functions.rb'
require 'colorize'

@player_one_lives = 3
@player_two_lives = 3
@current_player = @player1
def intro
  puts "Please enter your name, Player 1: "
  @player1 = gets.chomp
  puts "Thank you, #{@player1}"
  puts "Please enter your name, Player 2: "
  @player2 = gets.chomp
  puts "Thank you, #{@player2}"
  puts "Welcome to the game!"
end

def main
  intro
  while @player_one_lives != 0 && @player_two_lives != 0
    generate_question
    puts prompt_player(@player1)
    answer = gets.chomp.to_i
    result = verify_answer(answer)
    switch_player
    if result == false 
      if @current_player == @player1
        @player_one_lives -= 1
      else
        @player_two_lives -= 1
      end
      puts "#{@player1}: #{@player_one_lives} lives"
      puts "#{@player2}: #{@player_two_lives} lives"
      puts "You are terrible at math!".colorize(:red)
    else 
      puts "Nicely done!".colorize(:green)
    end
  end 
  puts "Game over! #{@current_player} lost!"
end

main