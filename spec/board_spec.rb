require 'board'

describe Board do
  context 'creation' do
    it 'can be created with a size of 8 x 8' do
      board = Board.new
      expect(board.spaces.size).to eq(8)
      expect(board.spaces[0].size).to eq(8)
    end
  end
end