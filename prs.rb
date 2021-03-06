puts "Welcome to PRS!"
puts
begin
	begin
		puts "For Paper enter P."
		puts "For Scissors enter S."
		puts "For Rock enter R."
		player_choice = gets.chomp.capitalize
		if player_choice == "P"
		  puts "You choose Paper"
		elsif player_choice == "R"
			puts "You choose Rock"
		elsif player_choice == "S"
			puts "You choose Scissors"
		else
			puts "Unknown choice. Please choose P, R, or S"
		end
	end until (player_choice == "P") || (player_choice == "R") || (player_choice == "S")

	computer_choices = ["Paper", "Rock", "Scissors"]
	computer = computer_choices.sample
	puts "The Computer chooses #{computer}"

	if (player_choice == "P" && computer == "Rock") || (player_choice == "S" && computer == "Paper") ||
	  (player_choice == "R" && computer == "Scissors")
	  puts "You WIN"
	elsif (player_choice == "R" && computer == "Paper") || (player_choice == "P" && computer == "Scissors") ||
	  (player_choice == "S" && computer == "Rock")
	  puts "Sorry, Computer wins!"
	elsif (player_choice == computer)
		puts "We have a tie"
	end

	puts "Do you want to play again? Enter Y for Yes or N for no"
	player_answer = gets.chomp.capitalize
	if player_answer == "Y"
		puts "Great!"
	else
	  puts "Goodbye"
	end
end while player_answer == "Y"
