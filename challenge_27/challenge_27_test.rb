# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_27'

# Common test
class Challenge < Minitest::Test
  def test_orthogonal_vector1
    assert_equal(orthogonal_vectors([1, 2], [2, 1]), false)
  end

  def test_orthogonal_vector2
    assert_equal(orthogonal_vectors([2, 1], [-1, 2]), true)
  end
end

