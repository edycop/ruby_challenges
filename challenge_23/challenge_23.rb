# frozen_string_literal: true

# Reto #23
# MÁXIMO COMÚN DIVISOR Y MÍNIMO COMÚN MÚLTIPLO
# Fecha publicación enunciado: 07/06/22
# Fecha publicación resolución: 13/06/22
# Dificultad: MEDIA
#
# Enunciado: Crea dos funciones, una que calcule el máximo común divisor (MCD) y otra que calcule el mínimo común múltiplo (mcm) de dos números enteros.
# - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#

# Euclides algorithm
def mcd(number_one, number_two)
  a = number_one
  b = number_two
  while a != 0
    temp = a
    a = b % a
    b = temp
  end
  b
end

def mcd_recursive(number_one, number_two)
  return number_two if number_one == 0

  mcd_recursive(number_two % number_one, number_one)
end

def mcm(number_one, number_two)
  (number_one * number_two) / mcd_recursive(number_one, number_two)
end

