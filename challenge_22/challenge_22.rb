# frozen_string_literal: true

# Reto #22
# CONJUNTOS
# Fecha publicación enunciado: 01/06/22
# Fecha publicación resolución: 07/06/22
# Dificultad: FÁCIL
#
# Enunciado: Crea una función que reciba dos array, un booleano y retorne un array.
# - Si el booleano es verdadero buscará y retornará los elementos comunes de los dos array.
# - Si el booleano es falso buscará y retornará los elementos no comunes de los dos array.
# - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#

def search_on_set(array_one, array_two, search_common)
  common = []
  no_common = []
  array_one.each do |number|
    if array_two.include?(number)
      common << number if !common.include?(number)
    else
      no_common << number if !no_common.include?(number)
    end
  end
  search_common ? common : no_common_search(common, no_common, array_two)
end

def no_common_search(common, no_common, array_two)
  array_two.each do |number|
    no_common << number unless common.include?(number)
  end
  no_common
end

