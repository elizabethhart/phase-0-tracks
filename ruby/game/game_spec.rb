require_relative 'game'

describe Game do
	let(:game) { Game.new }

	it "stores the word given on itialization and splits it into an array containing each character" do
		expect(game.store("test")).to eq ["t","e","s","t"]
	end

	it "creates an array of underscores based on length of word" do
		expect(game.create_empty_array("test")).to eq ["_ ","_ ","_ ","_ "]
	end	

	it "checks if the guessed letter is the word array" do
		game.store("test")
		expect(game.check_word("t")).to eq true
	end
	
	it "assigns the letter to the empty array and print string" do
		game.store("test")
		game.create_empty_array("test")
		expect(game.assign_letter("t")).to eq ["t ","_ ","_ ","t "]
	end	

	it "converts array to string and removes all whitespace" do
		expect(game.array_to_string(["t","e","s","t"])).to eq "test"
	end

end