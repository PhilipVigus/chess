class Board
  attr_reader :spaces

  def initialize
    @spaces = Array.new(8) { Array.new(8) }
  end

  def add_piece(piece, row, column)
    @spaces[row][column] = piece
  end
end