require_relative('./space.rb')

class Board
  attr_reader :spaces

  def initialize
    @spaces = Array.new(8) { Array.new(8) }
  end

  def add_piece(piece, space)
    @spaces[space.row][space.column] = piece
  end

  def empty_space?(space)
    @spaces[space.row][space.column].nil?
  end

  def piece_at(space)
    @spaces[space.row][space.column]
  end
end