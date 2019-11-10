class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    @a, @b, @c = [@a, @b, @c].sort
    raise TriangleError if @a <= 0 or @a + @b <= @c
    return :equilateral if @a == @c
    return :isosceles if @a == @b or @b == @c
    return :scalene
    # if @a == @b && @a == @c && @b == @c
    #   :equilateral
    # elsif @b==@c || @a==@b || @c==@a 
    #   :isosceles
    # elsif @a <= 0 || @b <= 0 || @c <= 0
    #   raise TriangleError
    # elsif @a >= @b+@c || @c >= @b+@a || @b >= @a+@c
    #   raise TriangleError
    # else 
    #   :scalene
    # end
  end
  
  class TriangleError < StandardError
    def message
      "invalid"
    end
  end
end
