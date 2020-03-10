require 'piece'

describe Piece do
  it "can be black" do
    piece = Piece.new
    expect(piece.colour).to eq("black")
  end
end