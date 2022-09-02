# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_25'

# Common test
class Challenge < Minitest::Test
  def test_rock_scissors_paper_tie1
    game = [
      [MOVES[:ROCK], MOVES[:ROCK]],
      [MOVES[:ROCK], MOVES[:SCISSORS]],
      [MOVES[:PAPER], MOVES[:SCISSORS]]
    ]
    assert_equal(rock_scissors_paper(game), 'Tie')
  end

  def test_rock_scissors_paper_tie
    game = [
      [MOVES[:ROCK], MOVES[:ROCK]],
      [MOVES[:SCISSORS], MOVES[:SCISSORS]],
      [MOVES[:PAPER], MOVES[:PAPER]]
    ]
    assert_equal(rock_scissors_paper(game), 'Tie')
  end

  def test_rock_scissors_paper_player2_win
    game = [
      [MOVES[:ROCK], MOVES[:SCISSORS]],
      [MOVES[:ROCK], MOVES[:PAPER]],
      [MOVES[:SCISSORS], MOVES[:ROCK]]
    ]
    assert_equal(rock_scissors_paper(game), 'Player2')
  end

  def test_rock_scissors_paper_player2
    game = [
      [MOVES[:ROCK], MOVES[:PAPER]],
      [MOVES[:SCISSORS], MOVES[:ROCK]],
      [MOVES[:PAPER], MOVES[:SCISSORS]]
    ]
    assert_equal(rock_scissors_paper(game), 'Player2')
  end
end

