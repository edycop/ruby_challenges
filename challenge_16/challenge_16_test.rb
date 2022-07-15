require 'minitest/autorun'
require_relative 'challenge_16'

# Common test
class Challenge < Minitest::Test
  def test_capitalize
    assert_equal(capitalize('¿hola qué tal estás?'), '¿Hola Qué Tal EstáS?')
  end

  def test_capitalize2
    assert_equal(capitalize('¿hola      qué tal estás?'), '¿Hola Qué Tal EstáS?')
  end

  def test_capitalize3
    assert_equal(capitalize('El niño ñoño'), 'El Niño ÑOñO')
  end

  def test_capitalize_ruby_way
    assert_equal(capitalize_ruby_way('¿hola qué tal estás?'), '¿Hola Qué Tal EstáS?')
  end
end
