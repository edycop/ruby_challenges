# frozen_string_literal: true

# * Reto #14
# * ¿ES UN NÚMERO DE ARMSTRONG?
# * Fecha publicación enunciado: 04/04/22
# * Fecha publicación resolución: 11/04/22
# * Dificultad: FÁCIL
# *
# * Enunciado: Escribe una función que calcule si un número dado es un número de Amstrong (o también llamado
#   narcisista).
# * Si no conoces qué es un número de Armstrong, debes buscar información al respecto.
# *
# * Información adicional:
# * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar
#     ayuda a la comunidad.
# * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
# *

def armstrong(number)
  return false if number.negative?

  armstrong = number
  digits = []
  counter = 0
  until number.zero?
    digits << number % 10
    counter += 1
    number /= 10
  end
  power = digits.size
  sum = 0
  digits.each do |digit|
    sum += digit**power
  end
  armstrong == sum
end

def armstrong_ruby_style(number)
  return false if number.negative?

  digits = number.digits
  sum = 0
  digits.each do |digit|
    sum += digit**digits.size
  end
  number == sum
end
