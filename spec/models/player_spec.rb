require 'spec_helper'

describe Player do
  describe "#choose" do
    it "takes in input" do
      allow(gets).to receive(:chomp) { 'paper' }
      human = Player.new("Bob")
      human.choose
      expect(human.move).to eq "paper"
    end
  end
end
