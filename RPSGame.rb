class Move
  attr_reader :value
  VALUE = ['rock', 'scissors', 'paper']

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (scissors? && other_move.paper?) ||
      (paper? && other_move.rock?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (scissors? && other_move.paper?) ||
      (paper? && other_move.scissors?)
  end
end

class Player
  attr_accessor :move, :name

  def initialize
    set_name
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "Please input your name."
      n = gets.chomp
      break unless n.empty?
      puts "You must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please input your choice: rock, scissors, paper."
      choice = gets.chomp
      break if Move::VALUE.include?(choice)
      puts "Your input is invalid. Please input again."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['deepmind', 'helloworld', 'hellokitty'].sample
  end

  def choose
    self.move = Move.new(Move::VALUE.sample)
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome
    "Welcome to the game!"
  end

  def display_godbye
    "Welcome to get back to the game again!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move.value}"
    puts "#{computer.name} chose #{computer.move.value}"
  end

  def display_winner
    display_moves
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def play
    display_welcome
    loop do
      human.choose
      computer.choose
      display_winner
      break unless play_again?
    end
    display_godbye
  end

  def play_again?
    puts "Do you want to play again?(y/n)"
    choice = nil
    loop do
      choice = gets.chomp
      break if ['y', 'n'].include?(choice.downcase)
      puts "Please input valid answer."
    end

    choice.downcase == 'y'
  end
end

RPSGame.new.play
