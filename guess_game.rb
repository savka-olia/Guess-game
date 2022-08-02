class Guess_Number
  def initialize
    @attempts = 3
    @rand_num = rand(1..12)
  end

  def welcome
    puts '------------------'
    puts '| GUESSING GAME  |'
    puts '------------------'
    puts "This is a guessing game where you have to guess a secret random number between 1 and 12. Remember that you have only 3 attempts to guess the number!\n\n"
  end

  def num_guessing
    puts "Enter any number from 1 to 12"
    1.upto(@attempts) do |attempt|
      puts "Attempt № #{attempt}: "
      user_num = gets.chomp.to_i
      if user_num == @rand_num
        puts "Congratulations! You guessed the number #{ @rand_num }"
      elsif user_num > @rand_num || user_num < @rand_num
        puts "You entered incorrent number! Available numbers are from 1 to 12."
      else
        puts "Please, try again:)"
      end
    end
    puts "The number was #{ @rand_num }"
    puts "Great game."
  end
end

game = Guess_Number.new
game.welcome
game.num_guessing