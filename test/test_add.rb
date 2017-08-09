require 'test/unit'
require 'app/calc'
class TestAdd < Test::Unit::TestCase
  def test_add_integer
    assert_equal(Calc.new(3,2).add, 5)
  end
  def test_add_bigint
    expected = Calc.new(10000000000,10000000000).add
    assert_equal expected, 20000000000
  end
  def test_add_float
    val1 = 2.1
    val2 = 5.2
    calc = Calc.new(val1,val2)
    expected = calc.add
    assert_equal expected, 7.3
    # assert_in_delta expected, 7.3, 0.0001
  end
  def test_add_both_args_String
    assert_raise(ArgumentError){Calc.new("A","B").add}
  end
  def test_add_first_arg_String
    assert_raise(ArgumentError){Calc.new(1,"B").add}
  end
  def test_add_second_arg_String
    assert_raise(ArgumentError){Calc.new("A",1).add}
  end
  def test_add_negative_number
    assert_equal(Calc.new(-1,5).add, 4)
  end
end
