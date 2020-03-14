require_relative('./piece.rb')

class Rook < Piece
  def initialize(colour)
    super(colour, Piece::ROOK)
  end

  def validate_move(board, move)

  end
end