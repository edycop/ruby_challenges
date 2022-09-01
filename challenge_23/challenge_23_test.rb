# frozen_string_literal: true


require_relative '../test_helper.rb'
require_relative 'challenge_23'

# Common test
class Challenge < Minitest::Test
  def test_mcd
    assert_equal(mcd(56, 180), 4)
  end

  def test_mcd_recursive
    assert_equal(mcd_recursive(56, 180), 4)
  end

  def test_mcm
    assert_equal(mcm(56, 180), 2520)
  end
end

