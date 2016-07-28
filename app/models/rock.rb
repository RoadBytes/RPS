class Rock < Move
  def compare(other_move)
    return 'tie' if other_move.class == self.class
    other_move.class.to_s == "Scissors" ? "win" : "lose"
  end
end
