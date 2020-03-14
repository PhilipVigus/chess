class Board
  def initialize
    @spaces = Array.new(8) { Array.new(8) }
  end

  def add_piece(piece, space)
    if space_out_of_bounds?(space)
      error_message = "unable to add piece as space coordinates are out of range: [#{space[0]}, #{space[1]}]"
      raise IndexError, error_message 
    end
    
    @spaces[space[0]][space[1]] = piece
  end

  def empty_space?(space)
    @spaces[space[0]][space[1]].nil?
  end

  def piece_at(space)
    @spaces[space[0]][space[1]]
  end

  def move_piece(start, finish)
    piece = @spaces[start[0]][start[1]]
    piece.validate_move(self, start, finish)
    @spaces[finish[0]][finish[1]] = @spaces[start[0]][start[1]]
    @spaces[start[0]][start[1]] = nil
  end

  private

  def space_out_of_bounds?(space)
    space[0] > 7 || space[1] > 7 || space[0] < 0 || space[1] < 0
  end
end