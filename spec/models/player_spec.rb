require 'spec_helper'

describe Player do
  describe "#choose" do
   before do
      @human = Player.new("Bob")
      @move_obj = double("Move").tap do |instance|
        allow(Move).to receive(:new).and_return(instance)
      end
    end

    it "takes in paper" do
      allow(@human).to receive(:gets).and_return("paper\n")

      @human.choose

      expect(@human.move).to eq @move_obj
      expect(Move).to have_received(:new).with("paper")
    end

    it "takes in rock" do
      allow(@human).to receive(:gets).and_return("rock\n")

      @human.choose

      expect(@human.move).to eq @move_obj
      expect(Move).to have_received(:new).with("rock")
    end
  end
end
