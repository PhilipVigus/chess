require 'space'

describe Space do
  it 'is created by specifying a row and column' do
    @space = Space.new(1, 2)
    expect(@space.row).to eq(1)
    expect(@space.column).to eq(2)
  end
end