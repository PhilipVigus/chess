require 'board'

describe Board do
  let(:board) { Board.new }
  let(:piece) { Piece.new(Piece::BLACK, Piece::PAWN) }
  let(:space0_0) { [0, 0] }
  let(:space1_0) { [1, 0] }

  context 'creation' do
    it 'can be created with a size of 8 x 8' do
      expect{ board.add_piece(piece, [8, 0]) }.to raise_error(IndexError)
      expect{ board.add_piece(piece, [0, 8]) }.to raise_error(IndexError)
      expect{ board.add_piece(piece, [-1, 0]) }.to raise_error(IndexError)
      expect{ board.add_piece(piece, [0, -1]) }.to raise_error(IndexError)
    end
  end

  context 'add_piece' do
    it 'you can add a piece to a square on the board' do
      board.add_piece(piece, space0_0)
      expect(board.piece_at(space0_0)).to eq(piece)
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

  context 'moving pieces' do
    context 'rooks' do
      it 'you can move a rook from the first square to the last square on the same row if there are no blocking pieces' do
        rook = Rook.new(Piece::WHITE)
        board.add_piece(rook, [4, 0])
        board.move_piece([4, 0], [4, 7])
        expect(board.empty_space?([4, 0])).to eq(true)
        expect(board.piece_at([4, 7])).to eq(rook)
      end

      it 'if you try to move a rook to somewhere on the same row past a blocking piece, it will raise an error' do
        moving_rook = Rook.new(Piece::WHITE)
        blocking_rook = Rook.new(Piece::WHITE)
        board.add_piece(moving_rook, [4, 4])
        board.add_piece(blocking_rook, [4, 5])
        expect{ board.move_piece([4, 4], [4, 7]) }.to raise_error(ArgumentError)
      end
    end
  end
end