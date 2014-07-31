# attr_reader :height
# attr_reader :width
# attr_reader :length
# attr_reader :weight
# attr_reader :name

class Parcel
  def initialize(height, width, length, weight, name)
    @height = height.to_i
    @width = width.to_i
    @length = length.to_i
    @weight = weight.to_i
    @name = name
  end

  def height
    @height
  end

  def width
    @width
  end

  def length
    @length
  end

  def weight
    @weight
  end

  def name
    @name
  end

  def volume
    @volume = @height * @width * @length
  end

  def cost_to_ship
    @cost_to_ship = (1.5 * self.volume) + (2 * @weight)
  end



end
