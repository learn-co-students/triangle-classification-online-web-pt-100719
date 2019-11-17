class Triangle
	attr_accessor :x, :y, :z

	def initialize(x,y,z)
		@x, @y, @z = x, y, z
	end

	def kind
		self.valid?
		if x != y && y != z && x != z
			:scalene
		elsif x == y && y == z
			:equilateral
		else
			:isosceles
		end
	end

	def valid?
		sides = [x,y,z]
		side_totals = [(x+y>z), (x+z>y), (y+z>x)]
		raise TriangleError if sides.any? { |int| int <= 0 }
		raise TriangleError if side_totals.any? { |x| x == false }
 	end

	class TriangleError < StandardError
	end
end
