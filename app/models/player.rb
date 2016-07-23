class Player
  VALID_VALUES = %w(rock paper scissors)
  attr_accessor :name, :move, :score

  def initialize(name)
    @name  = name
    @score = 0
  end

  def choose
    move = ''
    loop do
      puts "please input an element of #{VALID_VALUES}"
      move = gets.chomp
      break if VALID_VALUES.include? move
    end
    self.move = Move.new(move)
  end
end
