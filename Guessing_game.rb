def number_game
  return rand(1..100).to_i
end

keep_going = true
number_game
  puts "I have your magic number"
  puts "Pick a number between 1-100 to see if you can guess what number I'm thinking of"
counter = 0
until counter == 5
  counter = counter + 1
  user_input = gets.chomp.to_i
  if user_input < number_game
    puts "You're guessing low, try again"
    keep_going = false
  elsif user_input > number_game
    puts "You're guessing high, try again"
  else
    puts "You freaking nailed it!"

  end
end
puts "Here's your number #{number_game}"

#you get nothing! You lose! Good day Sir/Ma'am
