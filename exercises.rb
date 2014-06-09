
require 'time'

module Exercises
  # Exercise 0
  #  - Triples a given string `str`
  #  - Returns "nope" if `str` is "wishes"
  def self.ex0(str)
    str == "wishes" ?  "nope" : str * 3
  end

  # Exercise 1
  #  - Returns the number of elements in the array
  def self.ex1(array)
    array.size
  end

  # Exercise 2 
  #  - Returns the second element of an array
  def self.ex2(array)
    array[1]
  end

  # Exercise 3
  #  - Returns the sum of the given array of numbers
  def self.ex3(array)
    # counter = 0
    # array.each {|e| counter +=e }
    array.inject(:+)
  end

  # Exercise 4
  #  - Returns the max number of the given array
  def self.ex4(array)
    array.max
  end

  # Exercise 5
  #  - Iterates through an array and `puts` each element
  def self.ex5(array)
    # TODO
    array.each {|x| puts x}
  end

  # Exercise 6
  #  - Updates the last item in the array to 'panda'
  #  - If the last item is already 'panda', update
  #    it to 'GODZILLA' instead
  def self.ex6(array)
    array.pop == "panda" ? array << "GODZILLA" : array << 'panda'
  end

  # Exercise 7
  #  - If the string `str` exists in the array,
  #    add `str` to the end of the array
  def self.ex7(array, str)
    array.include?(str) ? array << str : array
  end

  # Exercise 8
  #  - `people` is an array of hashes. Each hash is like the following:
  #    { :name => 'Bob', :occupation => 'Builder' }
  #    Iterate through `people` and print out their name and occupation.
  def self.ex8(people)
    # TODO
    people.each do |e|
      puts "name: #{e[:name]}, occupation: #{e[:occupation]}"
    end

  end

  # Exercise 9
  #  - Returns `true` if the given time is in a leap year
  #    Otherwise, returns `false`
  # Hint: Google for the wikipedia article on leap years
  def self.ex9(time)
    # TODO
    # binding.pry
    if time.year % 4 != 0 
      return false
    elsif time.year % 100 == 0 && time.year % 400 != 0
      return false
    else
      return true
      end

  end
end


class RPS
  # Rock, Paper, Scissors
  # Make a 2-player game of rock paper scissors. It should have the following:
  #
  # It is initialized with two strings (player names).
  # It has a `play` method that takes two strings:
  #   - Each string reperesents a player's move (rock, paper, or scissors)
  #   - The method returns the winner (player one or player two)
  #   - If the game is over, it returns a string stating that the game is already over
  # It ends after a player wins 2 of 3 games
  #
  # You will be using this class in the following class, which will let players play
  # RPS through the terminal.
end


require 'io/console'
class RPSPlayer
  # (No specs are required for RPSPlayer)
  #
  # Complete the `start` method so that it uses your RPS class to present
  # and play a game through the terminal.
  #
  # The first step is to read (gets) the two player names. Feed these into
  # a new instance of your RPS class. Then `puts` and `gets` in a loop that
  # lets both players play the game.
  #
  # When the game ends, ask if the player wants to play again.
  def initialize(name1, name2)
    @name1=name1
    @name2=name2
    @count_wins =[0,0]
  end

  def play(p1_move, p2_move)

    #1 :Rock
    #2: Paper
    #3: Scissors
    return nil if p1_move == p2_move

    case p1_move
    when "rock"
      return 0 if p2_move == "scissors"
      return 1
    when "paper"
      return 0 if p2_move == "rock"
      return 1
    when "scissors"
      return 0 if p2_move == "paper"
      return 1
    end
      

    # p1_game = 1 + rand(3)
    # p2_game = 1 + rand(3)
    # if p1_game == 1
    #   if p2_game == 2
    #       @count_win[1] +=1
    #   elsif p2_game == 3
    #       @count_win[0] +=1
    #   end
    # elsif p1_game == 2
    #  if p2_game == 1
    #       @count_win[0] +=1
    #   elsif p2_game == 3
    #       @count_win[1] +=1
    #   end
    # elsif p1_game == 3
    #  if p2_game == 1
    #       @count_win[1] +=1
    #   elsif p2_game == 2
    #       @count_win[0] +=1
    #   end
    # end  
  end

  def game_finished?
      return @count_wins[0] == 2 || @count_wins[1] == 2 ? true : false 
  end

    if @count_wins[0] > @count_wins[1]
      return  @name1
    else
        return  @name2
    end
  end
    
  end

  def start

    # TODO

    # PRO TIP: Instead of using plain `gets` for grabbing a player's
    #          move, this line does the same thing but does NOT show
    #          what the player is typing! :D
    # This is also why we needed to require 'io/console'
    # move = STDIN.noecho(&:gets)
  
    coutn_plays = 0

    while true do
      round_winner = play(p1_move, p2_move)

      @count_wins[round_winner] += 1 unless round_winner.nil?
      
      if game_finished?
        return "The winner is" + winner
      end

      # return "no winers today"
  end
end


module Extensions
  # Extension Exercise
  #  - Takes an `array` of strings. Returns a hash with two keys:
  #    :most => the string(s) that occures the most # of times as its value.
  #    :least => the string(s) that occures the least # of times as its value.
  #  - If any tie for most or least, return an array of the tying strings.
  #
  # Example:
  #   result = Extensions.extremes(['x', 'x', 'y', 'z'])
  #   expect(result).to eq({ :most => 'x', :least => ['y', 'z'] })
  #
  def self.extremes(array)
    # TODO
  end
end
