class Board 
    attr_reader :board,
                :board_size,
                :bot_column,
                :bot_row
    def initialize(board_size, board)
      @board_size = board_size
      @board = board
      @bot_column = find_bot_column(board_size)
      @bot_row = find_bot_row(board_size)
    end

    def find_bot_column(board_size)
     (board_size - 1) / 2
    end

    def find_bot_row(board_size)
     (board_size - 1) / 2
    end
end 