require 'minitest/autorun'
require_relative 'challenge_11'

# Common test
class Challenge < Minitest::Test
  def test_compare_string1
    # skip
    assert_equal(compare_string('edwin', 'caldon'), %w[ewi calo])
  end

  def test_compare_string2
    # skip
    assert_equal(compare_string('Me gusta Ruby', 'Me gusta Elixir'), %w[by lixi])
  end
end
