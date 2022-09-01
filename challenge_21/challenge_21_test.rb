# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_21'

# Common test
class Challenge < Minitest::Test
  def test_calculate_true
    assert_equal(calculate('challenge_21.txt'), -13.5)
  end

  def test_calculate_false
    assert_equal(calculate('challenge_21_2.txt'), false)
  end
end

