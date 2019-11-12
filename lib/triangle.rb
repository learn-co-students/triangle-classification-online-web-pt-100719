class Triangle
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @triangle = []
    @triangle.push(side1, side2, side3)
  end

  def valid_triangle?
    if @side1 <= 0 || 
       @side2 <= 0 || 
       @side3 <= 0 ||
       (@side1 + @side2 <= @side3) ||
       (@side2 + @side3 <= @side1) ||
       (@side3 + @side1 <= @side2)
      false
    else
      true
    end
  end

  def kind
    if valid_triangle? 
      if @triangle.uniq.length == 1
        :equilateral
      elsif @triangle.uniq.length == 2 
        :isosceles
      else 
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError 
  end
  
end
