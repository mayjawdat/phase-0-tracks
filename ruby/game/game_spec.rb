require_relative 'game'

describe Game do
  let(:game) {Game.new}
  
it "initializes a new game" do
  expect(game.initialize).to eq(game)
end

it "gets a word inputted" do
  expect(game.input_word).to eq(@word)
end

it "gets a letter" do
  expect(game.input_letter).to eq(@letter)
end

it "replaces letters" do
  expect(game.word).to eq(['_', @letter])
end


end