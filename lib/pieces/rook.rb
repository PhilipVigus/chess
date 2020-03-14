require_relative('./piece.rb')

class Rook < Piece
  def initialize(colour)
    super(colour, Piece::ROOK)
  end

  def validate_move(board, start, finish)
    raise ArgumentError, "unable to move rook to space with different row and column" if start[0] != finish[0] && start[1] != finish[1]
  end
end