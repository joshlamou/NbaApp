require 'minitest/autorun'
require './calculator'

class TestCalculator < Minitest::Test
  def test_addition
    calculator = Calculator.new
    assert_equal 2, calculator.add(5, 2), "Addition method failed"
  end
end
