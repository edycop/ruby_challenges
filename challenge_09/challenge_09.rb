# frozen_string_literal: false

# * Reto #9
#  * CÓDIGO MORSE
#  * Fecha publicación enunciado: 02/03/22
#  * Fecha publicación resolución: 07/03/22
#  * Dificultad: MEDIA
#  *
#  * Enunciado: Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.
#  * - Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
#  * - En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras
#      "  ".
#  * - El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.
#  *
#  * Información adicional:
#  * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar
#      ayuda a la acomunidad.
#  * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
#  * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
#  * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#  *
MORSE_TABLE = {
  'A': '.—', 'N': '—.', '0': '—————',
  'B': '—...', 'Ñ': '——.——', '1': '.————',
  'C': '—.—.', 'O': '———', '2': '..———',
  'CH': '————', 'P': '.——.', '3': '...——',
  'D': '—..', 'Q': '——.—', '4': '....—',
  'E': '.', 'R': '.—.', '5': '.....',
  'F': '..—.', 'S': '...', '6': '—....',
  'G': '——.', 'T': '—', '7': '——...',
  'H': '....', 'U': '..—', '8': '———..',
  'I': '..', 'V': '...—', '9': '————.',
  'J': '.———', 'W': '.——', '.': '.—.—.—',
  'K': '—.—', 'X': '—..—', ',': '——..——',
  'L': '.—..', 'Y': '—.——', '?': '..——..',
  'M': '——', 'Z': '——..', '"': '.—..—.', '/': '—..—.'
}.freeze

def natural_to_morse(phrase)
  morse_result = ''
  there_was_c = false
  phrase_list = phrase.upcase.split('')
  (0..phrase_list.size - 1).each do |i|
    if phrase_list[i] == ' '
      morse_result << '  '
    else
      if phrase_list[i] == 'C' && phrase_list[i + 1] == 'H'
        there_was_c = true
        next
      else
        if there_was_c && phrase_list[i] == 'H'
          morse_result << MORSE_TABLE['CH'.to_sym]
          there_was_c = false
          morse_result << ' ' if phrase_list[i + 1] != ' '
          next
        end
        morse_result << MORSE_TABLE[phrase_list[i].to_sym]
      end
      morse_result << ' ' if phrase_list[i + 1] != ' '
    end
  end
  morse_result.strip
end

def morse_code(phrase)
  case phrase.gsub(/[a-zA-Z0-9]/).to_a.empty?
  when true # Morse
    natural_result = ''
    phrase.split('  ').each do |word|
      word.split(' ').each do |symbol|
        natural_result << MORSE_TABLE.key(symbol).to_s
      end
      natural_result << ' '
    end
    natural_result.strip.downcase
  when false # Natural
    natural_to_morse(phrase)
  end
end
