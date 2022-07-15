# frozen_string_literal: true

# * Reto #3
#  * ¿ES UN NÚMERO PRIMO?
#  * Fecha publicación enunciado: 17/01/22
#  * Fecha publicación resolución: 24/01/22
#  * Dificultad: MEDIA
#  *
#  * Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
#  * Hecho esto, imprime los números primos entre 1 y 100.
#  *
#  * Información adicional:
#  * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
#  * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
#  * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
#  * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#  *

def prime(number)
  return false if number < 2

  count_divisible = 0
  (2..number).each do |e|
    count_divisible += 1 if (number % e).zero?
  end

  return true if count_divisible == 1

  false
end

(1..100).each do |element|
  result = prime(element)
  p "#{element}: #{result}" if result
end
