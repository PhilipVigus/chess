require 'board'
require 'piece'
require 'space'

describe Board do
  let(:board) { Board.new }

  context 'creation' do
    it 'can be created with a size of 8 x 8' do
      expect(board.spaces.size).to eq(8)
      expect(board.spaces[0].size).to eq(8)
    end
  end

  context 'adding pieces' do
    it 'you can add a piece to a square on the board' do
      piece = Piece.new(Piece::BLACK, Piece::PAWN)
      board.add_piece(piece, Space.new(0, 0))

      expect(board.spaces[0][0]).to eq(piece)
    end
  end

  it 'tells you whether a space is empty' do
    occupied_space = Space.new(0, 0)
    empty_space = Space.new(1, 0)
    piece = Piece.new(Piece::BLACK, Piece::PAWN)
    board.add_piece(piece, occupied_space)

    expect(board.empty_space?(occupied_space)).to eq(false)
    expect(board.empty_space?(empty_space)).to eq(true)
  end
end