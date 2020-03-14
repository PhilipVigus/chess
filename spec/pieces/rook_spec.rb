require_relative '../../lib/pieces/rook.rb'

describe Rook do
  let(:white_rook) { Rook.new(Piece::WHITE) }
  let(:black_rook) { Rook.new(Piece::BLACK) }

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
end