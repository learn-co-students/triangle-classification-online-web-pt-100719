class Triangle

  class TriangleError < StandardError
  end
  attr_accessor :side_a, :side_b, :side_c
  @@all = []
  def initialize(one, two, three)
    @one = one 
    @two = two
    @three = three
    @@all << self

  end

  def kind
    case
    when (@one == @two && @two == @three)
      :equilateral
    when (@two==@three || @one==@two || @three==@one)
      :isosceles
    when @one != @two && @two != @three && @three != @one
      :scalene
    else
      raise TriangleError
    end
    @@all.each do |side|
      if side.to_i <= 0
        raise TriangleError
      end
    end
  end
end