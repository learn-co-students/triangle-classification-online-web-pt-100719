class Triangle
  attr_accessor :side_1, :side_2, :side_3
  
  @@all = []
  
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @@all << self
  end
  
  def kind
     if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if 
        @side_3 == @side_2 && @side_2 == @side_1
       :equilateral
      elsif
       @side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1
        :isosceles
     elsif
       @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
       :scalene
     end 
    end 
    end
    
  class TriangleError < StandardError
    # triangle error code
  end
end


bruh = Triangle.new(1,2,50)
bruh.kind