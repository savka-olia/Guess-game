require 'colorize'

class Guess_Number
  def initialize
    @attempts = 3
    @rand_num = rand(1..12)
  end

  def welcome
    puts '------------------'.colorize(:blue)
    puts '| GUESSING GAME  |'.colorize(:blue)
    puts '------------------'.colorize(:blue)
    puts "This is a guessing game where you have to guess a secret random number between 1 and 12. Remember that you have only 3 attempts to guess the number!\n\n"
  end

  def enter_user_num
    puts "Enter any number from 1 to 12:"
    gets.chomp.to_i
  end

  def correct_num?
    case 
    when @user_num == @rand_num
      puts "Success! You guessed the number #{ @rand_num }".colorize( :background => :green)
      return true
    when @user_num > @rand_num
      puts  "Your number is too high.".colorize( :background => :red)
      return false
    when  @user_num < @rand_num
      puts "Your number is too low.".colorize( :background => :red)
      return false
    end
  end

  private :enter_user_num, :correct_num?

  def num_guessing
    1.upto(@attempts) do |attempt|
      @user_num = enter_user_num
      if !correct_num?
        @attempts -= 1
        puts "Try again! You still have #{@attempts} attempts" if @attempts != 0
      else
        break
      end 
    end
    puts "The number was #{ @rand_num }".colorize(:color => :yellow)
  end
end

game = Guess_Number.new
game.welcome
game.num_guessing