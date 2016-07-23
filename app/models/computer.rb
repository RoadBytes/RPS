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
    self.move = Move.new(move)
  end
end

