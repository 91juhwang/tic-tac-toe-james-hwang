module TicTacToe
  class Board
    attr_accessor :board

    def initialize
      @board = []
    end

    def create_board
      puts 'Please provide an integer to create the board. (Ex: 3 would create 3x3 board)'
      board_number = gets.chomp.to_i
      check_valid_board_number(board_number)
      create_board_arrays(board_number)
    end

    def update_board(coordinates, player)
      board_info[coordinates[0]][coordinates[1]] = player.player_info[:horse]
    end

    def length
      board.length
    end

    def board_info
      board
    end

    def print_board
      puts '*******BOARD**********'
      board.each do |arry|
        puts arry.join(' ')
        puts '--' * board.length
      end
      puts '**********************'
    end

    private

    def create_board_arrays(board_number)
      board_number.times do
        board << Array.new(board_number, '.')
      end
      board
    end

    def check_valid_board_number(input)
      create_board unless input > 0
    end
  end
end
