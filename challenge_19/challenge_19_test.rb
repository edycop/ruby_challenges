# frozen_string_literal: true

require_relative 'test_helper'
require_relative 'challenge_19'

# Common test
class Challenge < Minitest::Test
  def test_one_second
    # skip
    assert_equal(time_to_milliseconds(0, 0, 0, 1), 1000)
  end

  def test_one_minute
    #skip
    assert_equal(time_to_milliseconds(0, 0, 1,0 ), 60_000)
  end
  
  def test_one_hour
    #skip
    assert_equal(time_to_milliseconds(0, 1, 0, 0), 3_600_000)
  end

  def test_one_day
    #skip
    assert_equal(time_to_milliseconds(1, 0, 0, 0), 24 * 3_600_000)
  end

  def test_one_hour_30_minutes
    #skip
    assert_equal(time_to_milliseconds(0, 10, 30, 0), 10 * 3_600_000 + 30 * 60_000)
  end
end
