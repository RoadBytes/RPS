class Move
  def to_s
    self.class.to_s
  end

  def name
    to_s.downcase
  end
end
