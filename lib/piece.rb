class Piece
  attr_reader :colour, :type

  WHITE = "white"
  BLACK = "black"

  PAWN = "pawn"
  ROOK = "rook"
  KNIGHT = "knight"
  BISHOP = "bishop"
  KING = "king"
  QUEEN = "queen"
  
  def initialize(colour, type)
    @colour = colour
    @type = type
  end
end