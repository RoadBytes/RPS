class Player
  VALID_VALUES = %w(rock paper scissors)
  attr_accessor :name, :move, :score, :moves

  def initialize(name)
    @name  = name
    @score = 0
    @moves = []
  end

  def choose
    move = ''
    loop do
      puts "please input an element of #{VALID_VALUES}"
      move = gets.chomp
      break if VALID_VALUES.include? move
    end
    self.move = Kernel.const_get(move.capitalize).new
    self.moves << move.to_s
  end
end
