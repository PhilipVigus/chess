require 'board'
require 'piece'

describe Board do
  context 'creation' do
    it 'can be created with a size of 8 x 8' do
      board = Board.new

      expect(board.spaces.size).to eq(8)
      expect(board.spaces[0].size).to eq(8)
    end
  end

  context 'adding pieces' do
    it 'you can add a piece to a square on the board' do
      board = Board.new
      piece = Piece.new("black", "pawn")
      board.add_piece(piece, 0, 0)

      expect(board.spaces[0][0]).to eq(piece)
    end
  end
end