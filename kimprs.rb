 
 class Player
  def player_intro
    puts "Lets play Paper, Rock, Scissors. What is your name?"
    @name = gets.chomp
  end
 
  def name
    @name
  end

  def play
    begin
      puts "#{name} enter p for Paper, r for Rock and s for Scissors."
      @player_choice = gets.chomp.downcase
    end until ["p", "r", "s"].include?(@player_choice)
  end

  def choice
    if @player_choice == "p"  
      "Paper"
    elsif @player_choice == "s"
      "Scissors"
    elsif @player_choice == "r"
      "Rock"
    end
  end
end

class Computer
  def selection
    @computer_selection = ["Paper", "Rock", "Scissors"].sample
  end

  def choice
    @computer_selection
  end

  def output
    put "Computer has #{@computer_selection}"
  end
end

class Game
  attr_accessor :player, :computer 

  def initialize
    @player = Player.new
    @computer = Computer.new
  end

  def intro
    @player.player_intro
  end 

  def x
    @player.play
    @computer.selection
  end

  def any
    puts "You have #{@player.choice} and computer has #{@computer.choice}"
  end

  def compare
    if (@computer.choice == "Paper" && @player.choice == "Rock") ||
       (@computer.choice == "Scissors" && @player.choice == "Paper") ||
       (@computer.choice == "Rock" && @player.choice == "Scissors") 
       puts "Computer wins!"
    elsif (@computer.choice == "Paper" && @player.choice == "Scissors") ||
          (@computer.choice == "Scissors" && @player.choice == "Rock") ||
          (@computer.choice == "Rock" && @player.choice == "Paper") 
          puts "You Win!"
    elsif (@computer.choice == @player.choice)
          puts " We have a TIE!"
    end
  end
end

def play_again
game = Game.new
game.intro
  begin
    game.x
    game.any
    game.compare
    begin
      puts "Would you like to play again? Enter y for yes and n for no."
      player_response = gets.chomp.downcase
    end until ["y", "n"].include?(player_response)
    if player_response == "n"
      puts "Thanks for playing."
    elsif player_response == "y"
      puts "Great, here we go!"
    end
  end until player_response == "n" 
end

play_again

 # i enter my name but dont use it anywhere. why?