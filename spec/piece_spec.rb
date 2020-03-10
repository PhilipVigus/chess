require 'piece'

describe Piece do
  it "can be black" do
    piece = Piece.new("black")
    expect(piece.colour).to eq("black")
  end

  it "can be white" do
    piece = Piece.new("white")
    expect(piece.colour).to eq("white")
  end
end