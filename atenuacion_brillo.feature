Feature: Atenuación dinámica de brillo de pantalla
  Como profesional o estudiante con largas jornadas digitales
  Quiero que el sistema reduzca el brillo automáticamente según mi tiempo de uso
  Para prevenir el desgaste visual y la fatiga ocular al final del día

  Scenario: Reducción gradual del brillo tras uso continuo
    Given que el usuario ha iniciado sesión en NeuroSpace y el servicio está activo
    And el usuario lleva más de "2 horas" de actividad visual continua frente a la pantalla
    When el sistema detecte un aumento sostenido en la carga visual y el tiempo de exposición
    Then el nivel de brillo del monitor debe reducirse en un "15%" de forma gradual y no intrusiva
    And el sistema debe registrar la acción preventivamente en el dashboard de "Salud Visual"
