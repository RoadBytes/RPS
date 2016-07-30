require 'spec_helper'

describe Computer do
  describe '#adjust_move_selection' do
    it 'sets move_selection equal to Player::VALID_VALUES at first' do
      expect(Computer.new.move_selection)
        .to eq Player::VALID_VALUES
    end

    it "lowers frequency of loosing move" do
      # setup
      losing = Computer.new
      frequency = Hash.new(0)

      # execution
      losing.adjust_move_selection('paper')

      # validation
      losing.move_selection.each do |item|
        frequency[item] += 1
      end
      Player::VALID_VALUES.each do |move|
        expect(frequency[move]).to eq 2 unless move == 'paper'
      end
      expect(frequency['paper']).to eq 1
    end

    it "lowers frequency of loosing move many times" do
      # setup
      losing = Computer.new
      frequency = Hash.new(0)

      # execution
      losing.adjust_move_selection('paper')
      losing.adjust_move_selection('paper')
      losing.adjust_move_selection('paper')
      losing.adjust_move_selection('paper')
      losing.adjust_move_selection('paper')
      losing.adjust_move_selection('paper')
      losing.adjust_move_selection('paper')

      # validation
      losing.move_selection.each do |item|
        frequency[item] += 1
      end
      Player::VALID_VALUES.each do |move|
        expect(frequency[move]).to eq 8 unless move == 'paper'
      end
      expect(frequency['paper']).to eq 1
    end
  end
end
