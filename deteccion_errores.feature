Feature: Detección de fatiga por patrones de uso
  Como usuario que redacta documentos largos
  Quiero que la app detecte si mi tasa de errores al escribir aumenta
  Para recibir una recomendación de descanso oportuno cuando mi concentración baje

  Scenario: Sugerencia de descanso por aumento de errores tipográficos
    Given que el usuario está escribiendo de forma continua en un documento
    And el sistema monitorea pasivamente las pulsaciones del teclado
    When el sistema detecte un uso excesivo de la tecla "Backspace"
    And se supere el umbral de errores promedio preconfigurado para el perfil
    Then NeuroSpace debe sugerir mediante una notificación tomar una pausa breve para despejar la mente
