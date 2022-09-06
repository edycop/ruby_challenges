# frozen_string_literal: true

require 'pry'

# Reto #29
# ORDENA LA LISTA
# Fecha publicación enunciado: 18/07/22
# Fecha publicación resolución: 26/07/22
# Dificultad: FÁCIL
#
# Enunciado: Crea una función que ordene y retorne una matriz de números.
# - La función recibirá un listado (por ejemplo [2, 4, 6, 8, 9]) y un parámetro adicional
#   "Asc" o "Desc" para indicar si debe ordenarse de menor a mayor o de mayor a menor.
# - No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

# sort_type:
#   true: descendant
#   false: ascendant
def sort(values, sort_type)
  sort_by = sort_type ? "values[i] >= pivot" : "values[i] <= pivot"
  quick_sort(values, 0, values.size - 1, sort_by)
  #buble_sort(values, sort_by)
end

def quick_sort(values, low, high, sort_by)
  if low < high
    pivot = partition(values, low, high, sort_by)

    quick_sort(values, low, pivot - 1, sort_by)
    quick_sort(values, pivot + 1 , high, sort_by)
  end
  values
end

def partition(values, low, high, sort_by)
  pivot = values[high]
  p_index = low
  i = low

  while i < high
    if eval(sort_by)
      values[i], values[p_index] = values[p_index], values[i]
      p_index += 1
    end
    i += 1
  end
  values[p_index], values[high] = pivot, values[p_index]
  p_index
end

def buble_sort(values, sort_by)
  length = values.size
  return values if length <= 1

  loop do
    swapped = false
    (length -1).times do |i|
      pivot = values[i + 1]
      if values[i] >= pivot #eval(sort_by)
        values[i], values[i + 1] = pivot, values[i]
        swapped = true
      end
    end
    break unless swapped
  end
  values
end

