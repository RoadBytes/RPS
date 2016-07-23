require 'spec_helper'

VALID_VALUES = Player::VALID_VALUES
describe Move do
  describe ".new" do
    context "with VALID_VALUES" do
      it "will accept 'rock'" do
        rock = Move.new('rock')
        expect(rock).to be_a Move
      end

      it "will accept 'paper'" do
        rock = Move.new('paper')
        expect(rock).to be_a Move
      end

      it "will accept 'scissors'" do
        scissors = Move.new('scissors')
        expect(scissors).to be_a Move
      end
    end

    context "with values not in VALID_VALUES" do
      it "will raise an error" do
        expect { Move.new('lock') }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#compare" do
    context "with matching values" do
      it "returns 'tie'" do
        VALID_VALUES.each do |value|
          player1 = Move.new(value)
          player2 = Move.new(value)
          expect(player1.compare(player2)).to eq "tie"
        end
      end
    end

    context "with value == rock" do
      it "wins against scissors" do
        rock     = Move.new("rock")
        scissors = Move.new("scissors")
        expect(rock.compare(scissors)).to eq "win"
      end
      it "loses against paper" do
        rock  = Move.new("rock")
        paper = Move.new("paper")
        expect(rock.compare(paper)).to eq "lose"
      end
    end

    context "with value == paper" do
      it "wins against rock" do
        paper = Move.new("paper")
        rock  = Move.new("rock")
        expect(paper.compare(rock)).to eq "win"
      end
      it "loses against scissors" do
        paper    = Move.new("paper")
        scissors = Move.new("scissors")
        expect(paper.compare(scissors)).to eq "lose"
      end
    end

    context "with value == scissors" do
      it "wins against paper" do
        scissors = Move.new("scissors")
        paper    = Move.new("paper")
        expect(scissors.compare(paper)).to eq "win"
      end
      it "loses against rock" do
        scissors = Move.new("scissors")
        rock     = Move.new("rock")
        expect(scissors.compare(rock)).to eq "lose"
      end
    end
  end
end
