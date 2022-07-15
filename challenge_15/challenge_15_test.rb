require 'minitest/autorun'
require_relative 'challenge_15'

# Common minitest
class Challenge < Minitest::Test
  def test_days_between1
    assert_equal(days_between('13/07/2022', '31/07/2022'), 18)
  end

  def test_days_between2
    assert_equal(days_between('no/es/fecha', '31/07/2022'), false)
  end

  def test_days_between3
    assert_equal(days_between('', ''), false)
  end

  def test_days_between5
    assert_equal(days_between('31/07/2022', '13/07/2022'), 18)
  end

  def test_days_between4
    assert_equal(days_between('13/7/2022', '31/07/2022'), false)
  end
end
