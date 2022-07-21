# frozen_string_literal: true

# * Reto #18
# * TRES EN RAYA
# * Fecha publicación enunciado: 02/05/22
# * Fecha publicación resolución: 09/05/22
# * Dificultad: DIFÍCIL
# *
# * Enunciado: Crea una función que analice una matriz 3x3 compuesta por "X" y "O" y retorne lo siguiente:
# * - "X" si han ganado las "X"
# * - "O" si han ganado los "O"
# * - "Empate" si ha habido un empate
# * - "Nulo" si la proporción de "X", de "O", o de la matriz no es correcta. O si han ganado los 2.
# * Nota: La matriz puede no estar totalmente cubierta. Se podría representar con un vacío "", por ejemplo.
# *
# * Información adicional:
# * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
# *

def tic_toc_toe(matrix)
  win_x = false
  win_o = false
  win_x = win(matrix, 'X')
  win_o = win(matrix, 'O')

  return nil if win_x.nil? || win_o.nil?
  return nil if win_x && win_o
  return 'draw' if win_x == false && win_o == false
  return 'X' if win_x
  return 'O' if win_o
end

def win(board, player = 'X')
  count_main_diagonal = 0
  count_second_diagonal = 0
  count_x = 0
  count_o = 0
  count_empty = 0
  all_1srt_row = false
  all_2nd_row = false
  all_3rd_row = false
  all_1srt_col = false
  all_2nd_col = false
  all_3rd_col = false
  (0..2).each do |i|
    count_main_diagonal += 1 if board[i][i] == player
    count_second_diagonal += 1 if board[i][board.size - 1 - i] == player

    all_1srt_row = true if board[i].all? { |e| e == player } && i.zero?
    all_2nd_row = true if board[i].all? { |e| e == player } && i == 1
    all_3rd_row = true if board[i].all? { |e| e == player } && i == 2

    count_col = 0
    (0..2).each do |j|
      count_col += 1 if board[j][i] == player
    end
    all_1srt_col = true if count_col == 3 && i.zero?
    all_2nd_col = true if count_col == 3 && i == 1
    all_3rd_col = true if count_col == 3 && i == 2

    count_x += board[i].count('X')
    count_o += board[i].count('O')
    count_empty += board[i].count("''")
  end
  return nil if (count_x - count_o).abs > 1
  return nil if count_empty > 1
  return true if count_main_diagonal == 3 || count_second_diagonal == 3
  return true if all_1srt_row || all_2nd_row || all_3rd_row
  return true if all_1srt_col || all_2nd_col || all_3rd_col

  false
end
