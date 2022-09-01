 # frozen_string_literal: false

# Reto #21
# CALCULADORA .TXT
# Fecha publicación enunciado: 23/05/22
# Fecha publicación resolución: 01/06/22
# Dificultad: MEDIA
#
# Enunciado: Lee el fichero "Challenge21.txt" incluido en el proyecto, calcula su resultado e imprímelo.
# - El .txt se corresponde con las entradas de una calculadora.
# - Cada línea tendrá un número o una operación representada por un símbolo (alternando ambos).
# - Soporta números enteros y decimales.
# - Soporta las operaciones suma "+", resta "-", multiplicación "*" y división "/".
# - El resultado se muestra al finalizar la lectura de la última línea (si el .txt es correcto).
# - Si el formato del .txt no es correcto, se indicará que no se han podido resolver las operaciones.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#

OPERATORS = ['*', '/', '-', '+']

def calculate(path_file)
  expression = ''
  was_number = false
  was_operator = true
  File.readlines(path_file).each do |line|
    line = line.strip.chomp('\n')
    if line.match?(/\d+\Z/) && was_operator
      was_number = true
      was_operator = false
      expression  << line
    elsif OPERATORS.include?(line) && was_number
      expression << line
      was_number = false
      was_operator = true
    else
      expression = ''
      break
    end
  end
  expression.empty? ? false : eval(expression)
end


#p calculate('challenge_21.txt')
#p calculate('challenge_21_2.txt')

