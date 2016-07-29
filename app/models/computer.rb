class Computer < Player
  BIASES = { 'R2D2' => 'rock', 'C3PO' => 'paper', 'Hal' => 'scissors' }

  def initialize
    super(%w(R2D2 C3PO Hal).sample)
  end

  def choose
    moves = Player::VALID_VALUES.clone
    favored_move = BIASES[name]
    10.times { moves <<  favored_move }
    move = moves.sample
    self.move = Kernel.const_get(move.capitalize).new
    self.moves << move.to_s
  end
end

