class Piece
  attr_accessor :posX, :posY, :moved
  attr_reader :owner, :board

  def initialize(posX, posY, owner)
    @posX = posX
    @posY = posY
    @owner = owner
    @moved = false
  end

  def move(x_new, y_new)
    if illegal_move?(x_new, y_new)
      illegal_move?(x_new, y_new)
    else
      self.posX = x_new
      self.posY = y_new
      :move_success
    end
  end

  private

  def illegal_move?(x_new, y_new)
    if [x_new, y_new] == [posX, posY]
      :no_move

    elsif !(1..8).include?(x_new) || !(1..8).include?(y_new)
      :out_of_bounds
    else
      false
    end
  end
end
