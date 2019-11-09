require 'pry'
class Triangle

  class TriangleError < StandardError
  end
  attr_accessor :side_a, :side_b, :side_c
  def initialize(one, two, three)
    @sides = []

    @one = one 
    @two = two
    @three = three
    @sides << @one
    @sides << @two
    @sides << @three
  end

  def kind
    @sides.each do |side|
      sorted = @sides.sort

      if sorted[1] + sorted[2] >= sorted[0]
        raise TriangleError
      elsif side <= 0
        raise TriangleError
      end
    end
    case
    when (@one == @two && @two == @three)
      :equilateral
    when (@two==@three || @one==@two || @three==@one)
      :isosceles
    when @one != @two && @two != @three && @three != @one
      :scalene
    end
  end
end