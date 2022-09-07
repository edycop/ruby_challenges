# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_32'

# Commons test
class Challenge < Minitest::Test
  def test_second_bigger
    assert_equal(second_bigger([4, 6, 1, 8, 2]), 6)
  end

  def test_second_bigger2
    assert_equal(second_bigger([4, 6, 8, 8, 2]), 6)
  end

  def test_second_bigger3
    assert_equal(second_bigger([4, 4]), 4)
  end

  def test_second_bigger4
    assert_nil(second_bigger([]), nil)
  end

  def test_second_bigger_ruby
    assert_equal(second_bigger_ruby([4, 6, 1, 8, 2]), 6)
  end

  def test_second_bigger_ruby2
    assert_equal(second_bigger_ruby([4, 6, 8, 8, 2]), 6)
  end

  def test_second_bigger_ruby3
    assert_equal(second_bigger_ruby([4, 4]), 4)
  end

  def test_second_bigger_ruby4
    assert_nil(second_bigger_ruby([]), nil)
  end
end

