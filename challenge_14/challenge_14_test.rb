require 'minitest/autorun'
require_relative 'challenge_14'

# Common test
class Challenge < Minitest::Test
  def test_armstrong1
    # skip
    assert_equal(armstrong(371), true)
  end

  def test_armstrong2
    # skip
    assert_equal(armstrong(-371), false)
  end

  def test_armstrong3
    # skip
    assert_equal(armstrong(372), false)
  end

  def test_armstrong4
    # skip
    assert_equal(armstrong(0), true)
  end

  def test_armstrong_ruby_style1
    # skip
    assert_equal(armstrong_ruby_style(371), true)
  end

  def test_armstrong_ruby_style2
    # skip
    assert_equal(armstrong_ruby_style(-371), false)
  end

  def test_armstrong_ruby_style3
    # skip
    assert_equal(armstrong_ruby_style(372), false)
  end

  def test_armstrong_ruby_style4
    # skip
    assert_equal(armstrong_ruby_style(0), true)
  end
end
