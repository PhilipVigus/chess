require 'board'
require_relative '../lib/pieces/piece.rb'

describe Board do
  let(:board) { Board.new }
  let(:piece) { Piece.new(Piece::BLACK, Piece::PAWN) }
  let(:space0_0) { [0, 0] }
  let(:space1_0) { [1, 0] }

  context 'creation' do
    it 'can be created with a size of 8 x 8' do
      expect(board.spaces.size).to eq(8)
      expect(board.spaces[0].size).to eq(8)
    end
  end

  context 'add_piece' do
    it 'you can add a piece to a square on the board' do
      board.add_piece(piece, space0_0)
      expect(board.spaces[0][0]).to eq(piece)
    end
  end

  context 'empty_space?' do
    it 'tells you whether a space is empty' do
      board.add_piece(piece, space0_0)
      expect(board.empty_space?(space0_0)).to eq(false)
      expect(board.empty_space?(space1_0)).to eq(true)
    end
  end

  context 'piece_at' do
    it 'gives you the piece on a specified square' do
      board.add_piece(piece, space0_0)
      expect(board.piece_at(space0_0)).to eq(piece)
    end

    it 'returns nil if the specified square is empty' do
      expect(board.piece_at(space0_0)).to eq(nil)
    end
  end
end