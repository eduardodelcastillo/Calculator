#rps.rb
#Rock, Paper, Scissors

# 1. Player makes a choice: Rock, Paper or Scissors
# 2. Computer makes a choice (random)
# 3. Declare winner then ask player if s/he wants to play again

CHOICES = {'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors'}
puts "Rock, Paper, Scissors!!!"

def display_winning_message(winning_choice)
  case winning_choice
  when 'r'
    puts "Rock smashes scissors."
  when 'p'
    puts "Paper wraps rock."
  when 's'
    puts "Scissors cut paper."
  end
end

loop do
  # player chooses
  begin
    puts "Pick one: r for Rock, p for Paper or s for Scissors."
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  # computer choice:
  computer_choice = CHOICES.keys.sample
  puts "Computer has chosen #{CHOICES[computer_choice]}."

  # determine winner
  # tie:
  if player_choice == computer_choice
    puts "It's a tie!"
  # player wins:
  elsif (player_choice == 'r' && computer_choice == 's') || (player_choice == 'p' && computer_choice == 'r') || (player_choice == 's' && computer_choice == 'p')
    display_winning_message(player_choice)
    puts "You win!"
  else
    display_winning_message(computer_choice)
    puts "You lose!"
  end

  puts "Do you want to play again? (y, n)"
  break if gets.chomp != 'y'

end