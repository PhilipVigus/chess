require_relative('./board.rb')
require_relative('./pieces/piece.rb')

class Game
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def setup_new_game
    piece_order = [Piece::ROOK, Piece::KNIGHT, Piece::BISHOP, Piece::QUEEN, Piece::KING, Piece::BISHOP, Piece::KNIGHT, Piece::ROOK]
    (0..7).each do |column|
      board.add_piece(Piece.new(Piece::WHITE, piece_order[column]), [0, column])
      board.add_piece(Piece.new(Piece::WHITE, Piece::PAWN), [1, column])
      board.add_piece(Piece.new(Piece::BLACK, Piece::PAWN), [6, column])
      board.add_piece(Piece.new(Piece::BLACK, piece_order[column]), [7, column])
    end
  end
end