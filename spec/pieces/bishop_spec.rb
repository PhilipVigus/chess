require_relative '../../lib/pieces/bishop.rb'

describe Bishop do
  context 'creation' do
    it 'is a piece' do
      bishop = Bishop.new(Piece::WHITE)
      expect(bishop).to be_kind_of(Piece)
    end
  end
end