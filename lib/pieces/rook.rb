require_relative('./piece.rb')

class Rook < Piece
  def initialize(colour)
    super(colour, Piece::ROOK)
  end

  def validate_move(board, start, finish)
    raise ArgumentError, "unable to move rook to space with different row and column" if start[0] != finish[0] && start[1] != finish[1]

    row = start[0]
    start_column = start[1] + 1
    end_column = finish[1]

    (start_column..end_column).each do |column|
      if !board.empty_space?([row, column])
        raise ArgumentError, "unable to move rook as there is a blocking piece"
      end
    end
  end
end