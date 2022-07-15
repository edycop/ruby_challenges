require 'minitest/autorun'
require_relative 'challenge_17'

# Common test
class Challenge < Minitest::Test
  def test_check_race1
    # skip
    assert_equal(check_race(%w[run jump run jump run], '_|_|_'), true)
  end

  def test_check_race2
    # skip
    assert_equal(check_race(%w[run run run jump run], '_|_|_'), false)
  end

  def test_check_race3
    # skip
    assert_equal(check_race(%w[run run jump jump run], '_|_|_'), false)
  end

  def test_check_race4
    # skip
    assert_equal(check_race(%w[run run jump jump run], '_|_|_|_'), false)
  end

  def test_check_race5
    # skip
    assert_equal(check_race(%w[run jump run jump], '_|_|_'), false)
  end

  def test_check_race6
    # skip
    assert_equal(check_race(%w[run jump run jump run jump run], '_|_|_'), false)
  end

  def test_check_race7
    # skip
    assert_equal(check_race(%w[jump jump jump jump jump], '|||||'), true)
  end

  def test_check_race8
    # skip
    assert_equal(check_race(%w[jump jump jump jump jump], '||?||'), false)
  end
end
