require_relative '../../lib/pieces/rook.rb'
require_relative '../../lib/board.rb'

describe Rook do
  let(:white_rook) { Rook.new(Piece::WHITE) }
  let(:black_rook) { Rook.new(Piece::BLACK) }
  let(:board) { Board.new }

  context 'creation' do
    it 'is a piece' do
      expect(black_rook).to be_kind_of(Piece)
    end

    it 'can be black or white' do
      expect(black_rook.colour).to be(Piece::BLACK)
      expect(white_rook.colour).to be(Piece::WHITE)
    end

    it 'is a rook' do
      expect(black_rook.type).to be(Piece::ROOK)
    end
  end

  context 'movement' do
    it 'raises an error when moving to a space that is a different row and column' do
      board.add_piece(white_rook, [4, 3])
      expect{ white_rook.validate_move(board, [4, 3], [0, 7]) }.to raise_error(ArgumentError)
    end

    it 'validate moves to the same row with no blocking pieces' do
      board.add_piece(white_rook, [0, 0])
      expect{ white_rook.validate_move(board, [0, 0], [0, 7]) }.not_to raise_error
    end

    it 'validate moves to the same column with no blocking pieces' do
      board.add_piece(white_rook, [0, 0])
      expect{ white_rook.validate_move(board, [0, 0], [7, 0]) }.not_to raise_error
    end
  end
end