# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_33'

# Common test
class Challenge < Minitest::Test
  def test_chinese_zodiac
    assert_equal(chinese_zodiac(1924), 'wood-rat')
  end

  def test_chinese_zodiac1
    assert_equal(chinese_zodiac(1946), 'fire-dog')
  end

  def test_chinese_zodiac2
    assert_equal(chinese_zodiac(1984), 'wood-rat')
  end

  def test_chinese_zodiac3
    assert_equal(chinese_zodiac(604), 'wood-rat')
  end

  def test_chinese_zodiac4
    assert_equal(chinese_zodiac(603), 'The sexagenary cycle starts on 604')
  end

  def test_chinese_zodiac5
    assert_equal(chinese_zodiac(1987), 'fire-rabbit')
  end

  def test_chinese_zodiac6
    assert_equal(chinese_zodiac(2022), 'water-tiger')
  end

  def test_chinese_zodiac7
    assert_equal(chinese_zodiac(1982), 'water-dog')
  end
end

