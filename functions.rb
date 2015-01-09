# all calculating/'worker' methods go here
require 'byebug'

def generate_question
  x = (1..20).to_a.sample
  y = (1..20).to_a.sample
  puts "What is #{x} plus #{y}"
end

# p generate_question
