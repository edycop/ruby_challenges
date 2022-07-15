require 'minitest/autorun'
require_relative 'challenge_12'

# Common test
class Challenge < Minitest::Test
  def test_palindrome1
    # skip
    assert_equal(palindrome('Anita lava la tina'), true)
  end

  def test_palindrome2
    # skip
    assert_equal(palindrome('Ana lleva al oso la avellana.'), true)
  end

  def test_palindrome3
    # skip
    assert_equal(palindrome('Adivina ya te opina, ya ni miles origina, ya ni cetro me domina, ya ni monarcas, a repaso ni mulato carreta, acaso nicotina, ya ni cita vecino, anima cocina, pedazo gallina, cedazo terso nos retoza de canilla goza, de pánico camina, ónice vaticina, ya ni tocino saca, a terracota luminosa pera, sacra nómina y ánimo de mortecina, ya ni giros elimina, ya ni poeta, ya ni vida'), true)
  end

  def test_palindrome4
    # skip
    assert_equal(palindrome('¿Qué os ha parecido el reto?'), false)
  end
end
