require 'board'
require 'piece'
require 'space'

describe Board do
  let(:board) { Board.new }
  let(:piece) { Piece.new(Piece::BLACK, Piece::PAWN) }

  context 'creation' do
    it 'can be created with a size of 8 x 8' do
      expect(board.spaces.size).to eq(8)
      expect(board.spaces[0].size).to eq(8)
    end
  end

  context 'adding pieces' do
    it 'you can add a piece to a square on the board' do
      board.add_piece(piece, Space.new(0, 0))

      expect(board.spaces[0][0]).to eq(piece)
    end
  end

  it 'tells you whether a space is empty' do
    occupied_space = Space.new(0, 0)
    empty_space = Space.new(1, 0)
    board.add_piece(piece, occupied_space)

    expect(board.empty_space?(occupied_space)).to eq(false)
    expect(board.empty_space?(empty_space)).to eq(true)
  end

  it 'gives you the piece on a specified square' do
    space = Space.new(0, 0)
    board.add_piece(piece, space)

    expect(board.piece_at(space)).to eq(piece)
  end

  it 'returns nil if the specified square is empty' do
    expect(board.piece_at(Space.new(0, 0))).to eq(nil)
  end
end