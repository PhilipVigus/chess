require_relative('./board.rb')
require_relative('./piece.rb')

class Game
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def setup_new_game
    piece_order = [Piece::ROOK, Piece::KNIGHT, Piece::BISHOP, Piece::QUEEN, Piece::KING, Piece::BISHOP, Piece::KNIGHT, Piece::ROOK]
    (0..7).each do |column|
      board.spaces[0][column] = Piece.new(Piece::WHITE, piece_order[column])
      board.spaces[1][column] = Piece.new(Piece::WHITE, Piece::PAWN)
      board.spaces[6][column] = Piece.new(Piece::BLACK, Piece::PAWN)
      board.spaces[7][column] = Piece.new(Piece::BLACK, piece_order[column])
    end
  end
end