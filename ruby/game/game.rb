class Game
  attr_accessor :guess_count
  attr_accessor :word
  attr_reader :word_output


  def initialize
    puts "Welcome to the guessing game!"
    @guess_count = 0
  end

  def input_word
    puts "Player 1, please enter a word:"
    @word = gets.chomp
    @word.split('')
  end

  def input_letter
    puts "Player 2, please guess a letter:"
    @letter = gets.chomp
    @word.each do
      |x| 
      if x != @letter
        print '_'
      else
        print @letter
      end
    end
    # can't figure out how to replace elements
  end
end

game = Game.new
game.input_word


while game.guess_count < game.word.length
  game.input_letter
  game.guess_count += 1
end

if game.word_output == game.word
  puts "Congratulations! You've finally used your bachelor's degree."
  # this one won't show up until the replacing elements question is sorted out
else
  puts "Oooh, awkward..."
end

    


