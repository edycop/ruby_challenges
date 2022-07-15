require 'minitest/autorun'
require_relative 'challenge_18'

# Common test
class Challenge < Minitest::Test
  def test_tic_toc_toe1
    matrix = [
      %w[X O X],
      %w[O X O],
      %w[O O X]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe2
    matrix = [
      %w['' O X],
      %w['' X O],
      %w['' O X]
    ]
    assert_equal(tic_toc_toe(matrix), nil)
  end

  def test_tic_toc_toe3
    matrix = [
      %w[O O O],
      %w[O X X],
      %w[O X X]
    ]
    assert_equal(tic_toc_toe(matrix), 'O')
  end

  def test_tic_toc_toe4
    matrix = [
      %w[X O X],
      %w[X X O],
      %w[X X X]
    ]
    assert_equal(tic_toc_toe(matrix), nil)
  end
end
