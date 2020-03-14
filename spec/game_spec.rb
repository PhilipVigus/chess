require 'game'

describe Game do
  let(:game) { Game.new }
  let(:piece_order) { [Piece::ROOK, Piece::KNIGHT, Piece::BISHOP, Piece::QUEEN, Piece::KING, Piece::BISHOP, Piece::KNIGHT, Piece::ROOK] }

  context 'the board' do
    it 'has a board that the game is played on' do
      expect(game.board).to be_instance_of(Board)
    end

    it 'a new game can be setup on the game board' do
      game.setup_new_game

      (0..7).each do |column|
        expect(game.board.spaces[0][column]).not_to eq(nil) 
        expect(game.board.spaces[0][column].colour).to eq(Piece::WHITE)
        expect(game.board.spaces[0][column].type).to eq(piece_order[column])

        expect(game.board.spaces[1][column]).not_to eq(nil)
        expect(game.board.spaces[1][column].colour).to eq(Piece::WHITE)
        expect(game.board.spaces[1][column].type).to eq(Piece::PAWN)

        expect(game.board.spaces[6][column]).not_to eq(nil)
        expect(game.board.spaces[6][column].colour).to eq(Piece::BLACK)
        expect(game.board.spaces[6][column].type).to eq(Piece::PAWN)

        expect(game.board.spaces[7][column]).not_to eq(nil) 
        expect(game.board.spaces[7][column].colour).to eq(Piece::BLACK)
        expect(game.board.spaces[7][column].type).to eq(piece_order[column])
      end
    end
  end
end