require_relative '../../lib/pieces/rook.rb'

describe Rook do
  it 'is a piece' do
    rook = Rook.new(Piece::BLACK)
    expect(rook).to be_kind_of(Piece)
  end
end