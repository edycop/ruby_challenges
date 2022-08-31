# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_20'

# Common test
class Challenge < Minitest::Test
  def test_asyn_sum_one
    assert_equal(async_sum(56, 23, 5), 79)
  end
end

