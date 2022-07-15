# * Reto #6
#  * INVIRTIENDO CADENAS
#  * Fecha publicación enunciado: 07/02/22
#  * Fecha publicación resolución: 14/02/22
#  * Dificultad: FÁCIL
#  *
#  * Enunciado: Crea un programa que invierta el orden de una cadena de texto sin usar funciones propias del lenguaje
#    que lo hagan de forma automática.
#  * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
#  *
#  * Información adicional:
#  * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar
#      ayuda a la acomunidad.
#  * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
#  * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
#  * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#  *

def reverse(phrase)
  new_phrase = ''
  (0..phrase.size - 1).each do |n|
    new_phrase << phrase[phrase.size - 1 - n]
  end
  new_phrase
end

def recursive_reverse(phrase, index = 0, reversed_text = '')
  return reversed_text if index == phrase.size

  reversed_text << phrase[phrase.size - 1 - index]
  recursive_reverse(phrase, index + 1, reversed_text)
end

p reverse('Hola mundo')
p recursive_reverse('Hola mundo')
