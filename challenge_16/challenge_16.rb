# frozen_string_literal: false

# * Reto #16
# * EN MAYÚSCULA
# * Fecha publicación enunciado: 18/04/22
# * Fecha publicación resolución: 25/04/22
# * Dificultad: FÁCIL
# *
# * Enunciado: Crea una función que reciba un String de cualquier tipo y se encargue de
# * poner en mayúscula la primera letra de cada palabra.
# * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
# *
# * Información adicional:
# * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar
#     ayuda a la comunidad.
# * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
# *

def capitalize(text)
  capitalized = []
  # normalized_text = text.encode(
  #   'ASCII', 'UTF-8', fallback: {
  #     'í' => 'i', 'á' => 'a', 'é' => 'e', 'ú' => 'u', 'ó' => 'o'
  #   }
  # )
  text.split(' ').each do |word|
    word.match(/\w+/) ? capitalized << word.gsub(/\w+/) {|w|w.capitalize} : capitalized << word
  end
  capitalized.join(' ')
end

def capitalize_ruby_way(text)
  text.gsub(/\w+/) { |w| w.capitalize }
end
