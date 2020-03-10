class Piece
  attr_reader :colour, :type
  def initialize(colour, type)
    @colour = colour
    @type = type
  end
end