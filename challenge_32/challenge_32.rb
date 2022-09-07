# frozen_string_literal: true

require 'set'

 # Reto #32
 # EL SEGUNDO
 # Fecha publicación enunciado: 08/08/22
 # Fecha publicación resolución: 15/08/22
 # Dificultad: FÁCIL
 #
 # Enunciado: Dado un listado de números, encuentra el SEGUNDO más grande.
 #
 # Información adicional:
 # - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 # - Tienes toda la información sobre los retos semanales en https://retosdeprogramacion.com/semanales2022.
 
def second_bigger(values)
  second_one = 0
  tries = 0
  values.each do |number|
    if number >= second_one
      second_one = number
      tries += 1
    end
    break if tries == 2
  end
  second_one.zero? ? nil : second_one
end

def second_bigger_ruby(values)
  return nil if values.empty?

  set_values = SortedSet.new(values)
  length = set_values.size
  set_values.to_a[length-2]
end

