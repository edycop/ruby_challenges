# frozen_string_literal: true

# Reto #30
# MARCO DE PALABRAS
# Fecha publicación enunciado: 26/07/22
# Fecha publicación resolución: 01/08/22
# Dificultad: FÁCIL
#
# Enunciado: Crea una función que reciba un texto y muestre cada palabra en una línea, formando
# un marco rectangular de asteriscos.
# - ¿Qué te parece el reto? Se vería así:
#   **********
#   * ¿Qué   *
#   * te     *
#   * parece *
#   * el     *
#   * reto?  *
#   **********
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

def draw_frame(text)
  split_text = text.split(' ')
  longest_word = 0
  split_text.each { |word| longest_word = word.size if word.size > longest_word }
  p '*' * (longest_word + 4)
  
  split_text.each do |word|
    p "* #{word}#{' ' * (longest_word - word.size)} *"
  end
  p '*' * (longest_word + 4)
end

draw_frame('Qué te parece el reto?')
draw_frame('Qué te       parece el reto?')
draw_frame('Cuántos retos de código de la comunidad has resuelto?')
draw_frame('Retos de programación')

