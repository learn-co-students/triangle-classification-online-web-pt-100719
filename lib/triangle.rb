class Triangle

  attr_reader :l1, :l2, :l3

  def initialize(l1,l2,l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    @l1.is_a?(Integer) ? s1 = @l1 : s1 = @l1 * 10
    @l2.is_a?(Integer) ? s2 = @l2 : s2 = @l2 * 10
    @l3.is_a?(Integer) ? s3 = @l3 : s3 = @l3 * 10

    triangle_sides = [s1,s2,s3]
    sides_temp = triangle_sides.combination(2).to_a

    sides_temp = sides_temp.map{|s| s.reduce(:*)}
    b = []

    sides_temp.each{|s|
      triangle_sides.each{|t|
        if(s>t)
          b << true
        else
          b << false
        end
      }
    }

    if !b.all?{|a| a==true}
        raise TriangleError
    elsif triangle_sides.all? { |a|  a == triangle_sides[0]}
      :equilateral
    elsif triangle_sides.combination(2).any? { |a,b|  a == b}
      :isosceles
    elsif triangle_sides.combination(2).none? { |a,b|  a == b}
      :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "Triangle wrong"
    end
  end
end
