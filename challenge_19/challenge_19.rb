# frozen_string_literal: true

# Reto #19
# CONVERSOR TIEMPO
# Fecha publicación enunciado: 09/05/22
# Fecha publicación resolución: 16/05/22
# Dificultad: FACIL
#
# Enunciado: Crea una función que reciba días, horas, minutos y segundos (como enteros) y retorne su resultado en milisegundos.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

def time_to_milliseconds(days, hours, minutes, seconds)
  total_milliseconds = 0
  total_milliseconds += seconds * 1_000
  total_milliseconds += minutes * 60_000
  total_milliseconds += hours * 3_600_000
  total_milliseconds += days * 24 * 3_600_000
  total_milliseconds
end

