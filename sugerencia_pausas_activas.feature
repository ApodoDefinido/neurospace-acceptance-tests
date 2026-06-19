Feature: Emisión de recordatorios para pausas activas
  Como usuario con alta carga cognitiva
  Quiero recibir recordatorios sutiles para tomar descansos
  Para recuperar energía mental sin que una alerta intrusiva interrumpa mi flujo de trabajo

  Scenario: Sugerencia de descanso tras tiempo de enfoque prolongado
    Given que el usuario se encuentra trabajando con el perfil "Trabajo" activado
    And han transcurrido "90 minutos" de trabajo ininterrumpido sin registrar pausas manuales
    When el algoritmo de NeuroSpace detecte un potencial estado de fatiga cognitiva
    Then el sistema debe mostrar un banner pequeño en una esquina de la pantalla
    And el banner debe sugerir sutilmente un "descanso de 5 minutos"
    But el banner no debe bloquear el cursor ni interrumpir la ventana activa del usuario
