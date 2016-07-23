class Move
  VALID_VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
  attr_reader :value

  def initialize(value)
    raise ArgumentError.new("Value must be in #{VALID_VALUES}") unless VALID_VALUES.include? value
    @value = value 
  end

  def compare(move2)
    if value == move2.value
      "tie"
    elsif rock?
      (move2.scissors? or move2.lizard?) ? "win" : "lose"
    elsif paper?
      (move2.rock? or move2.spock?) ? "win" : "lose"
    elsif scissors?
      (move2.paper? or move2.lizard?) ? "win" : "lose"
    elsif lizard?
      (move2.paper? or move2.spock?) ? "win" : "lose"
    elsif spock?
      (move2.scissors? or move2.rock?) ? "win" : "lose"
    else
      'lose'
    end
  end

  def scissors?
    @value == 'scissors'
  end

  def paper?
    @value == 'paper'
  end

  def rock?
    @value == 'rock'
  end

  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'spock'
  end

  def to_s
    @value
  end
end
