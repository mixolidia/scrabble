require './scrabble'

describe "self.score" do
  it "returns the total score value for a given 1 letter word" do
    expect(Scrabble.score("a")).to eq 1
  end

  it "returns the total score value for a given 3 letter word" do
    expect(Scrabble.score("are")).to eq 3
  end

  it "returns the total score value for the given case insensitve word" do
    expect(Scrabble.score("BEaR")).to eq 6
  end

  context "when word is invalid" do
    it "returns invalid if entry not a string" do
      expect {Scrabble.score(6)}.to raise_error
    end

    it "returns invalid with message if entry not a string" do
      expect {Scrabble.score(6)}.to raise_error, "Please enter a word."
    end
  end

  describe "self.highest_score_from" do
    it "returns the word in the array with the highest score" do
      expect(Scrabble.highest_score_from(["casa"])).to eq "casa"
    end

    it "returns word in a multi-word array with the highest score" do
      expect(Scrabble.highest_score_from(["casa", "car", "highest"])).to eq "highest"
    end

    it "returns word in a multi-word array with the highest score" do
      expect(Scrabble.highest_score_from(["casa", "car", "joys", "highest"])).to eq "joys"
    end
  end



end
