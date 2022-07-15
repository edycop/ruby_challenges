require 'minitest/autorun'
require_relative 'challenge_09'

# Common test data version: 1.2.0 4fc1acb
class Challenge < Minitest::Test
  def test_morse_code1
    assert_equal(morse_code('Esto es una prueba'), '. ... — ———  . ...  ..— —. .—  .——. .—. ..— . —... .—')
  end

  def test_morse_code2
    assert_equal(morse_code('Chocapic. Es una marca?'), '———— ——— —.—. .— .——. .. —.—. .—.—.—  . ...  ..— —. .—  —— .— .—. —.—. .— ..——..')
  end

  def test_morse_code3
    assert_equal(morse_code('. ... — ———  . ...  ..— —. .—  .——. .—. ..— . —... .—'), 'esto es una prueba')
  end

  def test_morse_code4
    assert_equal(morse_code('———— ——— —.—. .— .——. .. —.—. .—.—.—'), 'chocapic.')
  end
end
