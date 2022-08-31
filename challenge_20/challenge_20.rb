# frozen_string_literal: true

# Reto #20
# PARANDO EL TIEMPO
# Fecha publicación enunciado: 16/05/22
# Fecha publicación resolución: 23/05/22
# Dificultad: MEDIA
#
# Enunciado: Crea una función que sume 2 números y retorne su resultado pasados unos segundos.
# - Recibirá por parámetros los 2 números a sumar y los segundos que debe tardar en finalizar su ejecución.
# - Si el lenguaje lo soporta, deberá retornar el resultado de forma asíncrona, es decir, sin detener la ejecución del programa principal. Se podría ejecutar varias veces al mismo tiempo.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
#
require 'thread'
require 'async'

# This approach doesn't work properly
def async_sum_with_thread(number_one, number_two, seconds)
  result = 0
  Thread.new do
    sleep(seconds)
    result = number_one + number_two
  end.join
  result
end

def async_sum(number_one, number_two, seconds)
  sleep(seconds)
  number_one + number_two
end

#p async_sum_with_thread(2321, 4589, 10)
#p async_sum_with_thread(8956, 124578, 2)
#p async_sum_with_thread(8923, 1230, 5)
#p async_sum_with_thread(895623, 784512, 1)
#p async_sum_with_thread(96, 23, 20)
#p async_sum_with_thread(10, 12, 30)

Async do |task|
  task.async do
    p async_sum(2000, 4000, 10)
  end

  task.async do
    p async_sum(20, 80, 2)
  end

  task.async do
    p async_sum(300, 500, 5)
  end

  task.async do
    p async_sum(1, 9, 1)
  end

  task.async do
    p async_sum(200, 400, 20)
  end

  task.async do
    p async_sum(200, 400, 30)
  end
end

