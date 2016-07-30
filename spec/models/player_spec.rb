require 'spec_helper'

describe Player do
  describe '#choose' do
    it 'takes in input' do
      human = Player.new('Bob')
      allow(human).to receive(:gets).and_return("paper\n")

      move = human.choose

      expect(move.value).to eq 'paper'
    end
  end
end
