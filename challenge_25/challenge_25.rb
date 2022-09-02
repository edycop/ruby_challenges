# frozen_string_literal: true

# Reto #25
# PIEDRA, PAPEL, TIJERA
# Fecha publicación enunciado: 20/06/22
# Fecha publicación resolución: 27/06/22
# Dificultad: MEDIA
#
# Enunciado: Crea un programa que calcule quien gana más partidas al piedra, papel, tijera.
# - El resultado puede ser: "Player 1", "Player 2", "Tie" (empate)
# - La función recibe un listado que contiene pares, representando cada jugada.
# - El par puede contener combinaciones de "R" (piedra), "P" (papel) o "S" (tijera).
# - Ejemplo. Entrada: [("R","S"), ("S","R"), ("P","S")]. Resultado: "Player 2".
#
# Información adicional:
# - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
# - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
# - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
# - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.

MOVES = {'ROCK': 0, 'SCISSORS': 1, 'PAPER': 2}
PLAYER = {'Player1': 0, 'Player2': 1, 'Tie': 2}

def rock_scissors_paper(games)
  won_games_one = 0
  won_games_two = 0
  games.each do |game|
    move_player_one = game.first
    move_player_two = game.last

    if move_player_one != move_player_two
      if move_player_one == MOVES[:ROCK] && move_player_two == MOVES[:SCISSORS] || move_player_one == MOVES[:SCISSORS] && move_player_two == MOVES[:PAPER]|| move_player_one == MOVES[:PAPER] && move_player_two == MOVES[:ROCK]
          won_games_one += 1
      else
        won_games_two += 1
      end
    end
  end


  win_player =
    if won_games_one == won_games_two
      PLAYER[:Tie]
    elsif won_games_one > won_games_two
      PLAYER[:Player1]
    else
      PLAYER[:Player2]
    end

  PLAYER.key(win_player).to_s
end

