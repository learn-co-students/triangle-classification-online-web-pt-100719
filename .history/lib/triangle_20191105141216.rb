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
    @@all.each do |side|
      puts "#1 #{side}"
    end
  end
end
