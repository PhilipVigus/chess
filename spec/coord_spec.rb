require 'coord'

describe Coord do
  it 'is created by specifying a row and column' do
    coord = Coord.new(1, 2)
    expect(coord.row).to eq(1)
    expect(coord.column).to eq(2)
  end
end