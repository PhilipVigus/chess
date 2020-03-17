class Board
  def initialize
    @squares = Array.new(8) { Array.new(8) }
  end

  def add_piece(piece, square)
    validate_square(square)
    @squares[square[0]][square[1]] = piece
  end

  def empty_square?(square)
    validate_square(square)
    @squares[square[0]][square[1]].nil?
  end

  def piece_at(square)
    validate_square(square)
    @squares[square[0]][square[1]]
  end

  def move_piece(start, finish)
    validate_square(start)
    validate_square(finish)
    piece = @squares[start[0]][start[1]]
    piece.validate_move(self, start, finish)
    @squares[finish[0]][finish[1]] = @squares[start[0]][start[1]]
    @squares[start[0]][start[1]] = nil
  end

  private
  def validate_square(square)
    if square_out_of_bounds?(square)
      error_message = "square out of bounds: [#{square[0]}, #{square[1]}]"
      raise IndexError, error_message 
    end
  end

  def square_out_of_bounds?(square)
    square[0] > 7 || square[1] > 7 || square[0] < 0 || square[1] < 0
  end
end