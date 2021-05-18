class Board 
    attr_reader :board,
                :board_size
    def initialize(board_size, board)
        @board_size = board_size
        @board = board
    end
end 