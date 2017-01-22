require_relative 'game'

describe Game do
	let(:game) { Game.new }

	it "stores the word given on itialization and splits it into an array containing each character" do
		expect(game.store("simple")).to eq ["s","i","m","p","l","e"]
	end

	it "creates an array of underscores based on length of word" do
		expect(game.create_empty_array("simple")).to eq ["_ ","_ ","_ ","_ ","_ ","_ "]
	end	

	it "checks if the guessed letter is the word array" do
		expect(game.check_word("p")).to eq true
	end
	
	it "assigns the letter to the empty array and print string" do
		expect(game.assign_letter("p")).to eq ["_ ","_ ","_ ","p ","_ ","_ "]
	end	

	it "converts array to string and removes all whitespace" do
		expect(game.array_to_string(["s","i","m","p","l","e"])).to eq "simple"
	end

end