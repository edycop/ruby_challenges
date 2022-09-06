# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_29'

# Common test
class Challenge < Minitest::Test
  def test_sort_ascendant
    assert_equal(sort([4, 6, 1, 8, 2], false), [1,2,4,6,8])
  end
  
  def test_sort_descendant
    assert_equal(sort([4, 6, 1, 8, 2], true), [8,6,4,2,1])
  end
end

