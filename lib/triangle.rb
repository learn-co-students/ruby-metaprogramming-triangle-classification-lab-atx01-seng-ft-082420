class Triangle
  attr_accessor :side_one, :side_two, :side_three
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
#in retrospect I realllly should have made these attribute names shorter..
  def kind 
    if self.side_one <= 0 || self.side_two <= 0 || self.side_three <= 0
      raise TriangleError
    elsif self.side_one >= (self.side_two + self.side_three) || self.side_two >= (self.side_one + self.side_three) || self.side_three >= (self.side_one + self.side_two)
      raise TriangleError
    elsif self.side_one == self.side_two && self.side_two == self.side_three
      return :equilateral
    elsif self.side_one == self.side_two || self.side_two == self.side_three || self.side_one == self.side_three
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "this is not a valid triangle."
    end
  end
end
