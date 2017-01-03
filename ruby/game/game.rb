class Game
  attr_accessor :guess_count, :word
  attr_reader :word_output


  def initialize(word)
    @word = word
    @guess_count = 0
    @guess_array = word.split
  end

  def input_letter
    puts "Player 2, please guess a letter:"
    @letter = gets.chomp
    @guess_array << @letter
    p @guess_array
  end


  def input_letter
    puts "Player 2, please guess a letter:"
    @letter = gets.chomp
  
    if @guess_array.include?("@letter") == true
      @guess_array.gsub!(@guess_array[@letter], @letter)
    else
      @guess_array.gsub(@guess_array[!@letter],"_")
    end
  end
end



puts "Welcome to the guessing game!"
puts "Player 1, please enter a word:"
word = gets.chomp
game = Game.new(word)


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

    


