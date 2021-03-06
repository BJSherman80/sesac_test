class Board 
    attr_reader :board,
                :board_size,
                :bot_placement,
                :princess_placement
    def initialize(board_size, board)
      @board_size = board_size
      @board = board
      @bot_placement = find_bot_placement
      @princess_placement = find_princess_placement
    end


    def find_bot_placement
      [(@board_size - 1) / 2, (@board_size - 1) / 2]
    end

    def find_princess_placement
      princess_xy = []
      corner_positions = [0,0],
                         [@board_size - 1,0],
                         [0,@board_size - 1],
                         [@board_size - 1,@board_size - 1]
        corner_positions.each do |position|
          princess_xy << position if @board[position[0]][position[1]] == 'p'
         end
      princess_xy.flatten
    end
end 