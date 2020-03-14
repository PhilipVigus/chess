require_relative '../lib/pieces/piece.rb'

describe Piece do
  it "can be black" do
    @piece = Piece.new(Piece::BLACK, Piece::PAWN)
    expect(@piece.colour).to eq(Piece::BLACK)
  end

  it "can be white" do
    @piece = Piece.new(Piece::WHITE, Piece::PAWN)
    expect(@piece.colour).to eq(Piece::WHITE)
  end

  it "is a certain type (pawn, knight, rook, queen etc)" do
    @piece = Piece.new(Piece::WHITE, Piece::PAWN)
    expect(@piece.type).to eq(Piece::PAWN)
    
    @piece = Piece.new(Piece::WHITE, Piece::QUEEN)
    expect(@piece.type).to eq(Piece::QUEEN)
  end
end