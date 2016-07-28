class Scissors < Move
  def compare(other_move)
    return 'tie' if other_move.class == self.class
    other_move.class.to_s == "Paper" ? "win" : "lose"
  end
end
