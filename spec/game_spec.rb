require 'game'

describe Game do
  let(:game) { Game.new }
  context 'the board' do
    it 'has a board that the game is played on' do
      expect(game.board).to be_instance_of(Board)
    end
  end
end