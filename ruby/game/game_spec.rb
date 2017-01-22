require_relative 'game'

describe Game do
	let(:game) { Game.new }

	it "stores the word given on itialization and splits it into an array containing each character" do
		expect(game.store("simple")).to eq ["s","i","m","p","l","e"]
	end

	it "checks if the guessed letter is the word array" do
		expect(game.check_word("p")).to eq "_ _ _ p _ _"
	end
	
end