class Board

  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  def initialize
    @square = {}
    reset
  end

  def get_square_at(key)
    @square[key]
  end

  def set_square_at(key, marker)
    @square[key].marker = marker
  end

  def unmarked_keys
    @square.keys.select {|key| @square[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!detect_winner
  end

  def count_human_marker(square)
    square.collect(&:marker).count(TTTGame::HUMAN_MARKER)
  end

  def count_computer_marker(square)
    square.collect(&:marker).count(TTTGame::COMPUTER_MARKER)
  end

  def reset
    (1..9).each {|key| @square[key] = Square.new}
  end

  def detect_winner
    WINNING_LINES.each do |line|
      if count_human_marker(@square.values_at(*line)) == 3
        return TTTGame::HUMAN_MARKER
      elsif count_computer_marker(@square.values_at(*line)) == 3
        return TTTGame::COMPUTER_MARKER
      end
    end
    nil
  end
end

class Square
  INITIAL_MARKER = " "
  attr_accessor :marker
  def initialize
    @marker = INITIAL_MARKER
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

end

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end

class TTTGame
  HUMAN_MARKER = 'X'
  COMPUTER_MARKER = 'O'
  attr_accessor :board, :human, :computer
  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
  end

  def display_welcome_message
    puts "welcome to the TTTGame."
  end

  def display_goodbye_message
    puts "Goodbye!"
  end

  def clear
    system('clear')
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def display_board
    puts ""
    puts "     |     |"
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}  |  #{board.get_square_at(3)}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}  |  #{board.get_square_at(6)}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}  |  #{board.get_square_at(9)}"
    puts "     |     |"
  end

  def human_moves
    puts "Choose a square between #{board.unmarked_keys.join(",")}: "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if (1..9).include?(square)
      puts "That's not a valid choice."
    end
    board.set_square_at(square, human.marker)
  end

  def computer_moves
    board.set_square_at(board.unmarked_keys.sample, computer.marker)
  end

  def display_result
    clear_screen_and_display_board
    case board.detect_winner
    when "X"
      puts "You won!"
    when "O"
      puts "You lost!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again?(y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include?(answer)
      puts "Sorry, you have to input y or n."
    end
    answer == 'y'
  end

  def play
    display_welcome_message
    loop do
      display_board
      loop do
        human_moves
        break if board.someone_won? || board.full?
        computer_moves
        break if board.someone_won? || board.full?
        clear_screen_and_display_board
      end
      display_result
      break unless play_again?
      puts "Let's play again!"
      board.reset
    end
    display_goodbye_message
  end
end

game = TTTGame.new
game.play
