class Board
  attr_reader :spaces
  
  def initialize
    @spaces = Array.new(8) { Array.new(8) }
  end
end