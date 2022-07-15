# frozen_string_literal: true

# * Reto #4
#  * ÁREA DE UN POLÍGONO
#  * Fecha publicación enunciado: 24/01/22
#  * Fecha publicación resolución: 31/01/22
#  * Dificultad: FÁCIL
#  *
#  * Enunciado: Crea UNA ÚNICA FUNCIÓN (importante que sólo sea una) que sea capaz de calcular y retornar el
#    área de un polígono.
#  * - La función recibirá por parámetro sólo UN polígono a la vez.
#  * - Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
#  * - Imprime el cálculo del área de un polígono de cada tipo.
#  *
#  * Información adicional:
#  * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o
#      prestar ayuda a la acomunidad.
#  * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
#  * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
#  * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#  *

# SOLUTION 1

# def area(poligon)
#   case poligon.count
#   when 3
#     (poligon[:s1] * poligon[:s2] * Math.sin(poligon[:s3])) / 2
#   when 1
#     poligon[:s1]**2
#   when 2
#     poligon[:s1] * poligon[:s2]
#   end
# end

# p area({ s1: 10, s2: 10, s3: 5 })
# p area({ s1: 10 })
# p area({ s1: 10, s2: 5 })

# SOLUTION 2
class Poligon
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2 = false, side3 = false)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def area
    raise NoMethodError('Override this implementation')
  end

  def to_s
    "El area es #{area}"
  end
end

class Triangle < Poligon
  def area
    ((@side1 * @side2 * Math.sin(@side3)) / 2).abs
  end
end

class Rectangle < Poligon
  def area
    @side1 * @side2
  end
end

class Square < Poligon
  def area
    @side1**2
  end
end

p Triangle.new(10, 10, 5).to_s
p Rectangle.new(10, 5).to_s
p Square.new(10).to_s
