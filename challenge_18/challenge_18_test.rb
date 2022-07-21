# frozen_string_literal: true

require_relative 'test_helper'
require_relative 'challenge_18'

# Common test
class Challenge < Minitest::Test
  def test_tic_toc_toe_main_diagonal
    # skip
    matrix = [
      %w[X O X],
      %w[O X O],
      %w[O O X]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe_win_o
    # skip
    matrix = [
      %w[O X X],
      %w[O X O],
      %w[O O X]
    ]
    assert_equal(tic_toc_toe(matrix), 'O')
  end

  def test_tic_toc_toe_second_diagonal
    # skip
    matrix = [
      %w[O O X],
      %w[O X O],
      %w[X O X]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe_first_row
    # skip
    matrix = [
      %w[X X X],
      %w[X O O],
      %w[O O X]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe_second_row
    # skip
    matrix = [
      %w[O X O],
      %w[X X X],
      %w[O X O]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe_third_row
    # skip
    matrix = [
      %w[O X O],
      %w[O O X],
      %w[X X X]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe_first_col
    # skip
    matrix = [
      %w[X X O],
      %w[X O O],
      %w[X O X]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe_second_col
    # skip
    matrix = [
      %w[X X O],
      %w[O X X],
      %w[O X O]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe_third_col
    # skip
    matrix = [
      %w[O X X],
      %w[X O X],
      %w[O O X]
    ]
    assert_equal(tic_toc_toe(matrix), 'X')
  end

  def test_tic_toc_toe2
    # skip
    matrix = [
      %w['' O X],
      %w['' X O],
      %w['' O X]
    ]
    assert_nil(tic_toc_toe(matrix), nil)
  end

  def test_tic_toc_toe_both_win
    # skip
    matrix = [
      %w[O O O],
      %w[O X X],
      %w[X X X]
    ]
    assert_nil(tic_toc_toe(matrix), nil)
  end

  def test_tic_toc_toe4
    # skip
    matrix = [
      %w[X O X],
      %w[X X O],
      %w[X X X]
    ]
    assert_nil(tic_toc_toe(matrix), nil)
  end

  def test_tic_toc_toe5
    # skip
    matrix = [
      %w[O X X],
      %w[X O O],
      %w[X O X]
    ]
    assert_equal(tic_toc_toe(matrix), 'draw')
  end
end
