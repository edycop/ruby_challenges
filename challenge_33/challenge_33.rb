# frozen_string_literal: true

 # Reto #33
 # CICLO SEXAGENARIO CHINO
 # Fecha publicación enunciado: 15/08/22
 # Fecha publicación resolución: 22/08/22
 # Dificultad: MEDIA
 #
 # Enunciado: Crea un función, que dado un año, indique el elemento y animal correspondiente
 # en el ciclo sexagenario del zodíaco chino.
 # - Información: https://www.travelchinaguide.com/intro/astrology/60year-cycle.htm
 # - El ciclo sexagenario se corresponde con la combinación de los elementos madera,
 #   fuego, tierra, metal, agua y los animales rata, buey, tigre, conejo, dragón, serpiente,
 #   caballo, oveja, mono, gallo, perro, cerdo (en este orden).
 # - Cada elemento se repite dos años seguidos.
 # - El último ciclo sexagenario comenzó en 1984 (Madera Rata).
 #
 # Información adicional:
 # - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 # - Tienes toda la información sobre los retos semanales en https://retosdeprogramacion.com/semanales2022.

ELEMENTS = %w[wood fire earth metal water]
ANIMALS = %w[rat ox tiger rabbit dragon snake horse goat monkey rooster dog pig]

def chinese_zodiac(year)
  return 'The sexagenary cycle starts on 604' if year < 604

  cycle = ((year - 3) % 60)
  sexagenary_cycle[cycle - 1]
end

def sexagenary_cycle
  chinese_years = []
  iteration = 0
  element_index = 0
  loop do
    animal_index = 0
    next_index = 0
    while true
      if element_index >= ELEMENTS.size
        element_index = 0
      end
      chinese_years << "#{ELEMENTS[element_index]}-#{ANIMALS[animal_index]}"
      iteration += 1
      next_index += 1
      animal_index += 1 if animal_index < ANIMALS.size
      if next_index == 2
        element_index += 1
        next_index = 0
      end
      break if animal_index >= ANIMALS.size
    end
    break if iteration == 60
  end
  chinese_years
end

