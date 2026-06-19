Feature: Bloqueo de notificaciones de ocio y redes sociales
  Como usuario propenso a la ansiedad digital y la distracción
  Quiero que el sistema bloquee las notificaciones no esenciales durante mi sesión
  Para no romper mi estado de concentración profunda (Deep Work)

  Scenario: Supresión silenciosa de notificaciones de ocio en modo Deep Work
    Given que el usuario ha activado exitosamente una sesión de "Deep Work"
    And las aplicaciones "Instagram" y "TikTok" se encuentran categorizadas como "Ocio"
    When el dispositivo reciba una nueva notificación proveniente de alguna de estas aplicaciones
    Then la alerta visual y sonora debe ser suprimida silenciosamente por el sistema
    And la notificación debe ser almacenada temporalmente en el "Buzón de notificaciones retenidas"
