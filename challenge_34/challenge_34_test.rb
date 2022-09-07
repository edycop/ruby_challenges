# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_34'

# Common test
class Challenge < Minitest::Test
  def test_lost_numbers
    assert_equal(lost_numbers([1, 3, 5]), [2, 4])
  end

  def test_lost_numbers2
    assert_equal(lost_numbers([5, 3, 1]), [4, 2])
  end

  def test_lost_numbers3
    assert_equal(lost_numbers([5, 1]), [4, 3, 2])
  end

  def test_lost_numbers4
    assert_equal(lost_numbers([-5, 1]), [-4, -3, -2, -1, 0])
  end

  def test_lost_numbers5
    assert_equal(lost_numbers([1, 3, 3, 5]), LostException)
  end

  def test_lost_numbers6
    assert_equal(lost_numbers([5, 7, 1]), LostException)
  end

  def test_lost_numbers7
    assert_equal(lost_numbers([10, 7, 7, 1]), LostException)
  end
end

