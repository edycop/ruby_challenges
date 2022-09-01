# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_22'

# Common test
class Challenge < Minitest::Test
  def test_search_on_set_common
    assert_equal(search_on_set([1, 2, 3, 3, 4], [2, 2, 3, 3, 3, 4, 6], true), [2, 3, 4])
  end

  def test_search_on_set_no_common
    assert_equal(search_on_set([1, 2, 3, 3, 4], [2, 2, 3, 3, 3, 4, 6], false), [1, 6])
  end
end

