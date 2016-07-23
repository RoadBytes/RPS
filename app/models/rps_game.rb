class RPSGame
  GAMES_TO_WIN = 3
  attr_accessor :human, :computer

  def initialize
    @human    = Human.new("test")
    @computer = Computer.new
  end

  def play
    display_welcome_message
    set_user_name

    loop do
      human.choose
      computer.choose
      score_game
      display_winner
      break unless no_winning_score? and play_again?
    end

    display_goodbye_message
  end

  def display_welcome_message
    puts "Hi, Welcome to RPS your playing #{computer.name}"
    puts "First to #{GAMES_TO_WIN} wins!"
  end

  def set_user_name
    puts "Please input your name"
    name = gets.chomp
    human.name = name
  end

  def score_game
    game_result = human.move.compare(computer.move)
    if game_result == 'win'
      human.score += 1
    elsif game_result == 'lose'
      computer.score += 1
    end
  end

  def display_winner
    puts "You choose #{human.move}"
    puts "Computer #{computer.name} chooses #{computer.move}"
    game_result = human.move.compare(computer.move).capitalize
    puts "You #{game_result} #{human.name}"
    puts "The score is #{human.name}: #{human.score} to #{computer.name}: #{computer.score}"
  end

  def display_goodbye_message
    winner = human.score == GAMES_TO_WIN ? human.name : computer.name
    puts "#{winner} wins the whole shebang!"
    puts "Thanks for playing #{human.name}"
  end

  def play_again?
    reponse = nil
    loop do
      puts "Play again? enter (yes or no)"
      reponse = gets.chomp
      break if %w(yes no).include? reponse
    end
    reponse == 'yes'
  end

  def no_winning_score?
    human.score < GAMES_TO_WIN and computer.score < GAMES_TO_WIN
  end
end
