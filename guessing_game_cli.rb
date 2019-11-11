# Code your solution here!

# def run_guessing_game
#   puts "Guess a number between 1 and 6."
#   user_input = gets.chomp
#   comp.num = rand(6) + 1
#   while user_input != "exit" do
#     if user_input.to_i == comp_num
#       puts "You guessed the correct number!"
#     else
#       puts "The computer guessed #{comp_num}."
#     end
#     comp_num = rand(6) + 1
#     user_input = gets.chomp
#   end
#   if user_input = "exit"
#     puts "Goodbye!"
#   end
# end

def run_guessing_game
  puts "Guess a number between 1 and 6."
  reply = gets.chomp
  random = rand(1..6).to_i

  if reply.to_i == random
    puts "You guessed the correct number!"
    run_guessing_game
  elsif reply.downcase.strip == "exit"
    puts "Goodbye!"
  else
    puts "The computer guessed #{random}."
    run_guessing_game
  end
end
