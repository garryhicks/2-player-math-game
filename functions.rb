# all calculating/'worker' methods go here
require 'byebug'

def generate_question
  x = (1..20).to_a.sample
  y = (1..20).to_a.sample
   puts "What is #{x} plus #{y}?"
  @correct_answer = x + y
end

def prompt_player(player)
  "#{player} - you're up!"
end

def verify_answer(answer)
  answer == @correct_answer
end

def switch_player
  @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
end