require 'minitest/autorun'
require_relative 'challenge_10'

# Common test data version: 1.2.0 4fc1acb
class Challenge < Minitest::Test
  def test_validate_expression_true_expression
    # skip
    assert_equal(validate_expression('{ [ a * ( c + d ) ] - 5 }'), true)
  end

  def test_validate_expression_false_expression
    assert_equal(validate_expression('{ a * ( c + d ) ] - 5 }'), false)
  end

  def test_validate_expression_false_expression2
    assert_equal(validate_expression('{ [ a * ( c + d ) ] - 5 } )'), false)
  end
end
