require 'minitest/autorun'
require_relative 'challenge_08'

# Common test data version: 1.2.0 4fc1acb
class Challenge < Minitest::Test
  def test_decimal_binario10
    assert_equal decimal_binario(10), '1010'
  end

  def test_decimal_binario387
    assert_equal decimal_binario(387), '110000011'
  end

  def test_decimal_binario0
    assert_equal decimal_binario(0), '0'
  end
end
