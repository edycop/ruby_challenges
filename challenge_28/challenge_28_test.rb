# frozen_string_literal: true

require_relative '../test_helper.rb'
require_relative 'challenge_28'

# Common test
class Challenge < Minitest::Test
  def test_buying_agua
    assert_equal(buy(1, [COINS[:CIEN], COINS[:DOSCIENTOS], COINS[:MIL]]), {:Agua => []})
  end

  def tes_buying_coke
    assert_equal(buy(2, [COINS[:QUINIENTOS], COINS[:MIL], COINS[:MIL]]), {:Colombiana => [200, 100]})
  end

  def test_cannot_buy
    assert_equal(buy(4, [COINS[:CIEN], COINS[:MIL]]), "The product 4(3400) can't be buy with 1100.")
  end

  def test_product_not_exists
    assert_equal(buy(3, [COINS[:CIEN], COINS[:MIL]]), "The product with code 3 doesn't exists.")
  end

  def test_coins_not_valid
    assert_equal(buy(3, [COINS[:CIEN], COINS[:DOSMIL]]), "Coins are not valid")
  end
end

