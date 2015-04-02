begin
  SUITS = ["Diamonds", "Clubs", "Spades", "Hearts"]
  VALUE = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
  deck = VALUE.product(SUITS).shuffle!

  system "clear"
  system "cls"

  def check_card(card)
    if card[0] == "A"
      card[0].to_i + 11
    elsif card[0].to_i != 0
       card[0].to_i
    elsif card[0].to_i == 0
       card[0].to_i + 10
    end
  end

  player_bank = []
  player_first_card = deck.pop
  player_bank << player_first_card
  player_second_card = deck.pop
  player_bank << player_second_card
  player_total = check_card(player_first_card) + check_card(player_second_card)
  puts "You have #{player_first_card.join(" of ")} and #{player_second_card.join(" of ")} and your total is #{player_total}"

  computer_bank = []
  computer_first_card = deck.pop
  computer_bank << computer_first_card
  computer_total = check_card(computer_first_card)
  puts "The computer has #{computer_first_card.join(" of ")} and the total is #{computer_total}"
  begin
    puts "Would you like another card? Enter Yes or No?"
    response = gets.chomp.downcase
    if response == "y"
      extra_card = deck.pop
      player_bank << extra_card
      player_total += check_card(extra_card)
      puts "You got #{extra_card.join(" of ")} and your new total is #{player_total}"
    elsif response == "n"
      puts "Ok. It's computer's turn."
    break
    else
      puts "Please enter a valid input."
    end
  end until response == "n" || player_total >= 21

  if player_total > 21
    puts "Computer will stay."
  elsif (computer_total < 17) && (player_total <= 21)
    begin
      computer_extra_card = deck.pop
      computer_bank << computer_extra_card
      computer_total += check_card(computer_extra_card)
      puts "Computer has #{computer_extra_card.join(" of ")} and its total is #{computer_total}"
    end until (computer_total <= 21) && (computer_total >= 17) || computer_total > 21
  end
 
  if computer_total == player_total
    puts " We have a tie! I guess no one wins."
    elsif ((computer_total <= 21) && (player_total > 21)) || ((computer_total <= 21) && (player_total <= 21) && (computer_total > player_total))
    puts "Computer Wins!"
    elsif ((computer_total > 21 ) && (player_total <= 21)) || ((computer_total <= 21) && (player_total <= 21) && (player_total > computer_total))
    puts "You win!"
  end

  puts "Would you like to play again"
  player_answer = gets.chomp.downcase
  if player_answer == "y"
  elsif player_answer == "n"
    puts "Great game friend."
  end
end while (player_answer == "y")
