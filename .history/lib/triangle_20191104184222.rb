class Triangle
  attr_accessor :side_a, :side_b, :side_c
  @@all = []
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @@all << self
  end

  def kind
    @@all.each do |side|
      if side.all? 
  end
end
