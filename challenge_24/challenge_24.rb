# frozen_string_literal: true

# Reto #24
# ITERATION MASTER
# Fecha publicación enunciado: 13/06/22
# Fecha publicación resolución: 20/06/22
# Dificultad: FÁCIL
#
# Enunciado: Quiero contar del 1 al 100 de uno en uno (imprimiendo cada uno). ¿De cuántas maneras eres capaz de hacerlo? 
# Crea el código para cada una de ellas.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#

MIN = 1
MAX = 10

def main
  p '***** 1 *****'
  (MIN..MAX).each {|n| p n}

  p '***** 2 *****'
  for i in MIN..MAX do
    p i
  end

  p '***** 3 *****'
  i = MIN
  while i <= MAX do
    p i
    i += 1
  end

  p '***** 4 *****'
  i = MIN
  loop do
    p i
    i += 1
    break if i == MAX + 1
  end

  p '***** 5 *****'
  x = MIN
  until x == MAX + 1
    p x
    x += 1
  end

  p '***** 6 *****'
  x = MIN
  MAX.times do
    p x
    x += 1
  end

  p '***** 7 *****'
  x = MIN
  begin
    p x
    x += 1
  end while x <= MAX
  
  p '***** 8 *****'
  def serie(n)
    return n if n == MAX + 1
    p n
    serie(n + 1)
  end

  serie(MIN)
end

main

