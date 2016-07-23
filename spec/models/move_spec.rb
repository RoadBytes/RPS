require 'spec_helper'

VALID_VALUES = Move::VALID_VALUES
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

      it "will accept 'lizard'" do
        lizard = Move.new('lizard')
        expect(lizard).to be_a Move
      end

      it "will accept 'spock'" do
        spock = Move.new('spock')
        expect(spock).to be_a Move
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
      it "wins against lizard" do
        rock   = Move.new("rock")
        lizard = Move.new("lizard")
        expect(rock.compare(lizard)).to eq "win"
      end
      it "loses against paper" do
        rock  = Move.new("rock")
        paper = Move.new("paper")
        expect(rock.compare(paper)).to eq "lose"
      end
      it "loses against spock" do
        rock  = Move.new("rock")
        spock = Move.new("spock")
        expect(rock.compare(spock)).to eq "lose"
      end
    end

    context "with value == paper" do
      it "wins against rock" do
        paper = Move.new("paper")
        rock  = Move.new("rock")
        expect(paper.compare(rock)).to eq "win"
      end
      it "wins against spock" do
        paper = Move.new("paper")
        spock = Move.new("spock")
        expect(paper.compare(spock)).to eq "win"
      end
      it "loses against scissors" do
        paper    = Move.new("paper")
        scissors = Move.new("scissors")
        expect(paper.compare(scissors)).to eq "lose"
      end
      it "loses against lizard" do
        paper  = Move.new("paper")
        lizard = Move.new("lizard")
        expect(paper.compare(lizard)).to eq "lose"
      end
    end

    context "with value == scissors" do
      it "wins against paper" do
        scissors = Move.new("scissors")
        paper    = Move.new("paper")
        expect(scissors.compare(paper)).to eq "win"
      end
      it "wins against lizard" do
        scissors = Move.new("scissors")
        lizard   = Move.new("lizard")
        expect(scissors.compare(lizard)).to eq "win"
      end
      it "loses against rock" do
        scissors = Move.new("scissors")
        rock     = Move.new("rock")
        expect(scissors.compare(rock)).to eq "lose"
      end
      it "loses against spock" do
        scissors = Move.new("scissors")
        spock    = Move.new("spock")
        expect(scissors.compare(spock)).to eq "lose"
      end
    end

    context "with value == lizard" do
      it "wins against paper" do
        lizard = Move.new("lizard")
        paper  = Move.new("paper")
        expect(lizard.compare(paper)).to eq "win"
      end
      it "wins against spock" do
        lizard = Move.new("lizard")
        spock  = Move.new("spock")
        expect(lizard.compare(spock)).to eq "win"
      end
      it "loses against rock" do
        lizard = Move.new("lizard")
        rock   = Move.new("rock")
        expect(lizard.compare(rock)).to eq "lose"
      end
      it "loses against scissors" do
        lizard   = Move.new("lizard")
        scissors = Move.new("scissors")
        expect(lizard.compare(scissors)).to eq "lose"
      end
    end

    context "with value == spock" do
      it "wins against scissors" do
        spock    = Move.new("spock")
        scissors = Move.new("scissors")
        expect(spock.compare(scissors)).to eq "win"
      end
      it "wins against rock" do
        spock = Move.new("spock")
        rock  = Move.new("rock")
        expect(spock.compare(rock)).to eq "win"
      end
      it "loses against paper" do
        spock = Move.new("spock")
        paper = Move.new("paper")
        expect(spock.compare(paper)).to eq "lose"
      end
      it "loses against lizard" do
        spock   = Move.new("spock")
        lizard  = Move.new("lizard")
        expect(spock.compare(lizard)).to eq "lose"
      end
    end
  end
end
