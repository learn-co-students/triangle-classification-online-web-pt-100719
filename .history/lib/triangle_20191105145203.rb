class Triangle
  attr_accessor :side_a, :side_b, :side_c
  @@all = []
  def initialize(one, two, three)
    @one = one 
    @two = two
    @three = three
    @@all << self

  end

  def kind
    if (@one || @two || @three) <= 0
      raise TriangleError
    end
    case
    when (@one && @two && @three)
      :equilateral
    when (@two==@three || @one==@two || @three==@one) && (@two==@three || @one==@two || @three==@one)
      :isosceles
    when @one != @two && @two != @three && @three != @one
      :scalene
    else
      :invalid
    end
  end
end
class TriangleError < StandardError
end