# frozen_string_literal: false

require 'minitest'

# * Reto #8
#  * DECIMAL A BINARIO
#  * Fecha publicación enunciado: 18/02/22
#  * Fecha publicación resolución: 02/03/22
#  * Dificultad: FÁCIL
#  *
#  * Enunciado: Crea un programa se encargue de transformar un número decimal a binario sin utilizar funciones propias
#    del lenguaje que lo hagan directamente.
#  *
#  * Información adicional:
#  * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar
#      ayuda a la acomunidad.
#  * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
#  * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
#  * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#  *

def decimal_binario(number)
  binary = ''
  until number.zero?
    reminder = number % 2
    number /= 2
    binary = "#{reminder}#{binary}"
  end
  binary.empty? ? '0' : binary
end

# p decimal_binario(10)
# p decimal_binario(387)
# p decimal_binario(0)
