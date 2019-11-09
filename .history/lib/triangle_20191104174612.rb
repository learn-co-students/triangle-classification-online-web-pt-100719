class Triangle
  attr_accessor :side_a, :side_b, :side_c
  @@all = []
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    (@side_a && @side_b && @side_c) === (@side_a && @side_b && @side_c) ? :equilateral : nil
    (@side_a == @side_b) || (@side_b == @side_c) || (@side_c == @side_a) ? :isosceles : nil 
  end
end
