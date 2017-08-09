class Calc
  def initialize(num,num2)
    raise ArgumentError,"num and num2 must be a number " unless num.kind_of?(Numeric) && num2.kind_of?(Numeric)
    @x = num
    @y = num2
  end
  def add
    @x + @y
  end
  def subtract
    @x - @y
  end
  def multiply
    @x * @y
  end
  def divide
    @x / @y
  end
end
