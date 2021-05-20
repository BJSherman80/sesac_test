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

class Mario 
  attr_reader :column,
              :row 

  def initialize(board)
    @board = board
    @column = column_placement
    @row = row_placement
  end

  def column_placement
    @board.bot_placement[1]
  end 

  def row_placement
    @board.bot_placement[0]
  end
end 

class Princess
    attr_reader :column,
                :row
  
    def initialize(board)
      @board = board
      @column = column_placement
      @row = row_placement
    end
  
    def column_placement
      @board.princess_placement[1]
    end 
  
    def row_placement
      @board.princess_placement[0]
    end
  end 

  class SavePrincess
    attr_reader :board,
                :mario,
                :princess,
                :row_difference,
                :column_difference
    def initialize(n, r, c, board)
      @board = Board.new(n,r,c, board)
      @princess = Princess.new(@board)
      @mario = Mario.new(@board)
      @row_difference = row_difference
      @column_difference = column_difference
    end
  
    def row_difference 
      row_distance = @mario.row_placement - @princess.row_placement
    end
  
    def column_difference
      column_distance = @mario.column_placement - @princess.column 
    end
  
    def next_move
      if @row_difference.zero?
          horizontal
      else
          vertical
      end
    end
  
    def vertical
       @row_difference.negative? ? 'DOWN' : 'UP'
    end
  
    def horizontal
      @column_difference.negative? ? 'RIGHT' : 'LEFT'
    end 
    
  end

  n = gets.to_i
  
  r,c = gets.strip.split.map {|num| num.to_i}
  
  grid = Array.new(n)
  
  (0...n).each do |i|
    grid[i] = gets
  end

  def nextMove(n,r,c,grid)
    save_princess = SavePrincess.new(n, r, c, grid)
    puts save_princess.next_move
  end
  
  nextMove(n,r,c,grid)

