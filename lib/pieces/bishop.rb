require_relative('./piece.rb')

class Bishop < Piece
  def initialize(colour)
    super(colour, Piece::BISHOP)
  end
end