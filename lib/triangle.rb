class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind 
    if self.invalid? 
      raise TriangleError
    elsif side1 == side2 && side1 == side3
      p :equilateral
    elsif side1 != side2 && side2 != side3 && side1 != side3
      p :scalene
    elsif side1 == side3 || side2 == side3 || side1 == side2
      p :isosceles
    end
  end
  
  class TriangleError < StandardError
    def message
      "invalid"
    end 
  end 
  
  def invalid?
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      true
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2
      true
    else
      false
    end 
  end
  
end
