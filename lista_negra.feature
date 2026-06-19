Feature: Lista negra de dominios web
  Como estudiante con tendencia a la procrastinación
  Quiero añadir sitios web específicos a una lista de bloqueo
  Para evitar entrar en páginas de entretenimiento durante mis horas de estudio

  Scenario: Bloqueo de acceso a sitio web en lista negra durante sesión activa
    Given que el sitio web "YouTube" se encuentra registrado en mi lista negra
    And existe una sesión de enfoque profundo activa en NeuroSpace
    When el usuario intente acceder a dicha URL desde el navegador
    Then la extensión del sistema debe interceptar la solicitud web
    And el sistema debe mostrar una pantalla de bloqueo de NeuroSpace en lugar del contenido
