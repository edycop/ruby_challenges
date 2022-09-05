# frozen_string_literal: true

# Reto #28
# MÁQUINA EXPENDEDORA
# Fecha publicación enunciado: 11/07/22
# Fecha publicación resolución: 18/07/22
# Dificultad: MEDIA
#
# Enunciado: Simula el funcionamiento de una máquina expendedora creando una operación
# que reciba dinero (array de monedas) y un número que indique la selección del producto.
# - El programa retornará el nombre del producto y un array con el dinero de vuelta (con el menor
#   número de monedas).
# - Si el dinero es insuficiente o el número de producto no existe, deberá indicarse con un mensaje
#   y retornar todas las monedas.
# - Si no hay dinero de vuelta, el array se retornará vacío.
# - Para que resulte más simple, trabajaremos en céntimos con monedas de 5, 10, 50, 100 y 200.
# - Debemos controlar que las monedas enviadas estén dentro de las soportadas.
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

COINS = {'CINCUENTA': 50, 'CIEN': 100, 'DOSCIENTOS': 200, 'QUINIENTOS': 500, 'MIL': 1000}

def buy(code, money)
  return 'Coins are not valid' unless validate_coins(money)

  product = products(code)
  if product.nil?
    "The product with code #{code} doesn't exists."
  else
    total_money = money.sum
    return "The product #{code}(#{product.values[0]}) can't be buy with #{total_money}." if total_money < product.values[0]

    money_back = total_money - product.values[0]
    #p total_money
    #p product
    return {product.keys[0] => return_coins(money_back)}
  end
end

def products(code)
  {
    1 => {'Agua': 1_300},
    2 => {'Colombiana': 2_200},
    4 => {'Cerveza': 3_400},
    5 => {'Donut': 550},
    10 => {'Cookies': 750}
  }[code]
end

def validate_coins(coins)
  coins.each do |coin|
    return false if !COINS.values.include?(coin)
  end
  true
end

def return_coins(money)
  reminding = money
  return_money = []
  while reminding != 0
    COINS.values.reverse.each do |coin|
      if reminding >= coin
        reminding = reminding - coin
        return_money << coin
        break
      end
    end
  end
  return_money
end

