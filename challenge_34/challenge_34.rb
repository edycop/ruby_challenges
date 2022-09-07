# frozen_string_literal: true

require_relative 'lost_exception'

# Reto #34
# LOS NÚMEROS PERDIDOS
# Fecha publicación enunciado: 22/08/22
# Fecha publicación resolución: 29/08/22
# Dificultad: FÁCIL
#
# Enunciado: Dado un array de enteros ordenado y sin repetidos, crea una función que calcule
# y retorne todos los que faltan entre el mayor y el menor.
# - Lanza un error si el array de entrada no es correcto.
#
# Información adicional:
# - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal"
#   para preguntas, dudas o prestar ayuda a la comunidad.
# - Tienes toda la información sobre los retos semanales en
#   https://retosdeprogramacion.com/semanales2022.

def lost_numbers(values)
  ascendant = values.first < values.last
  condition = ascendant ? 'previuos < values[i]' : 'previuos > values[i]'
  return LostException unless verify_order(values, condition)

  lost_list = []
  number_list = ascendant ? (values.first..values.last) : (values.last..values.first).to_a.reverse
  number_list.each do |n|
    lost_list << n unless values.include?(n)
  end
  lost_list
end

def verify_order(values, condition)
  previuos = values[0]
  flag = true
  (1..values.size - 1).each do |i|
    if eval(condition) && previuos != values[i]
      previuos = values[i]
    else
      flag = false
    end
  end
  flag
end

