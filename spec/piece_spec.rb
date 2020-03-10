require 'piece'

describe Piece do
  it "can be black" do
    piece = Piece.new("black", "pawn")
    expect(piece.colour).to eq("black")
  end

  it "can be white" do
    piece = Piece.new("white", "pawn")
    expect(piece.colour).to eq("white")
  end

  it "is a certain type (pawn, knight, rook, queen etc)" do
    piece = Piece.new("white", "pawn")
    expect(piece.type).to eq("pawn")
    piece = Piece.new("white", "queen")
    expect(piece.type).to eq("queen")
  end
end