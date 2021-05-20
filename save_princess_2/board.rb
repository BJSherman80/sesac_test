class Board 
    attr_reader :board,
                :princess_placement,
                :bot_placement
    def initialize(n, r, c, board)
      @board = board
      @board_size = n
      @bot_placement = [r,c]
      @princess_placement = find_princess_placement
    end

    def find_princess_placement
        princess_xy = []
     @board.each_with_index do |line, index|
       princess_xy << [index, line.chars.index('p')] if line.include?('p')
      end
      princess_xy.flatten
    end
end

