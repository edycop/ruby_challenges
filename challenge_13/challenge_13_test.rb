require 'minitest/autorun'
require_relative 'challenge_13'

# Common test
class Challenge < Minitest::Test
  def test_factorial1
    # skip
    assert_equal(factorial(0), 1)
  end

  def test_factorial2
    # skip
    assert_equal(factorial(7), 5040)
  end

  def test_factorial3
    # skip
    assert_equal(factorial(10), 3_628_800)
  end

  def test_factorial4
    # skip
    assert_equal(factorial(1), 1)
  end

  def test_factorial5
    # skip
    assert_equal(factorial(-1), nil)
  end
end
