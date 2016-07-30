class Computer < Player
  attr_accessor :move_selection

  def initialize
    @valid_moves    = Player::VALID_VALUES.clone
    @move_selection = Player::VALID_VALUES.clone
    super(%w(R2D2 C3PO Hal).sample)
  end

  def choose
    move = move_selection.sample
    self.move = Kernel.const_get(move.capitalize).new
    self.moves << move.to_s
  end

  def adjust_move_selection(losing_move)
    non_losing_moves = valid_moves
    non_losing_moves.delete(losing_move)
    self.move_selection += non_losing_moves
  end

  private

  def valid_moves
    @valid_moves.clone
  end
end

