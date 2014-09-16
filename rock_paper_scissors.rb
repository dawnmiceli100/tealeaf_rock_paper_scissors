# rock_paper_scissors.rb

CHOICES = {'p' => "Paper", 'r' => "Rock", 's' => "Scissors" }

def play_game
  puts "Choose one: (P/R/S)"
  user_pick = gets.chomp.downcase
  computer_pick = CHOICES.keys.sample
  puts "You picked #{CHOICES[user_pick]} and computer picked #{CHOICES[computer_pick]}"
  determine_winner(user_pick, computer_pick)
end  

def determine_winner(user_p, comp_p)
  if user_p == comp_p
    puts "It's a tie."
  else
    if (user_p == "p" && comp_p == "r") || (user_p == "r" && comp_p == "s") || (user_p == "s" && comp_p == "p")
      display_winner_message(user_p)
      puts "You won!" 
    else
      display_winner_message(comp_p) 
      puts "Computer won!" 
    end
  end
    
  puts "Play again?"
  play_ind = gets.chomp.downcase

  if play_ind == "y" 
    play_game
  end 
end

def display_winner_message(winning_pick)
  if winning_pick == "p"
    puts "Paper covers rock!"
  elsif winning_pick == "r"
    puts "Rock breaks scissors!"
  else
    puts "Scissors cuts paper!"
  end
end        

puts "Play Paper Rock Scissors!"
play_game

  


