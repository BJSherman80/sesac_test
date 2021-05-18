class Board 
    attr_reader :board,
                :board_size,
                :bot_placement
    def initialize(board_size, board)
      @board_size = board_size
      @board = board
      @bot_placement = find_bot_placement(board_size)
    end

    def find_bot_placement(board_size)
      [(board_size - 1) / 2, (board_size - 1) / 2]
    end
end 