class Board
  attr_reader :spaces

  def initialize
    @spaces = Array.new(8) { Array.new(8) }
  end

  def add_piece(piece, space)
    @spaces[space[0]][space[1]] = piece
  end

  def empty_space?(space)
    @spaces[space[0]][space[1]].nil?
  end

  def piece_at(space)
    @spaces[space[0]][space[1]]
  end
end