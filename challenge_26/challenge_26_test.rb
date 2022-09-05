# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_26'

# Common test
class Challenge < Minitest::Test
  def test_polygon_square
    assert_equal(draw_polygon(POLYGON_TYPE[:SQUARE]), true
  end
end

