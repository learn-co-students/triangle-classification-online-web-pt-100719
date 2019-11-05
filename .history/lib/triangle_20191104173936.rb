class Triangle
  attr_accessor :side_a, :side_b, :side_c
  @@all = []
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @@all << @side_a && @side_b && @side_c
  end

  def kind
    
  end
end
