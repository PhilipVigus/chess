require_relative('./coord.rb')

class Board
  attr_reader :spaces

  def initialize
    @spaces = Array.new(8) { Array.new(8) }
  end

  def add_piece(piece, coord)
    @spaces[coord.row][coord.column] = piece
  end
end