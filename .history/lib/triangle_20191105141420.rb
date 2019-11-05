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
    case
    when @one && @two == @three
      :equilateral
    else
      :isoceles
    end
  end
end
