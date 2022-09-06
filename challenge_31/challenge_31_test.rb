# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_31'

# Common test
class Challenge < Minitest::Test
  def test_leap_years1
    assert_equal(next_leap_years(1999, 30), [2000, 2100, 2200, 2300, 2400, 2500, 2600, 2700, 2800, 2900, 3000, 3100, 3200, 3300, 3400, 3500, 3600, 3700, 3800, 3900, 4000, 4100, 4200, 4300, 4400, 4500, 4600, 4700, 4800, 4900])
  end

  def test_leap_years2
    assert_equal(next_leap_years(1700, 30), [1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 2600, 2700, 2800, 2900, 3000, 3100, 3200, 3300, 3400, 3500, 3600, 3700, 3800, 3900, 4000, 4100, 4200, 4300, 4400, 4500, 4600, 4700])
  end
end

