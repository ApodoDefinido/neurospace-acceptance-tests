Feature: Modo de Bloqueo Inquebrantable
Como usuario que suele autosabotearse
Quiero un modo que no permita desactivar los bloqueos manualmente hasta que acabe el tiempo
Para asegurar el cumplimiento estricto de mi sesión de estudio

Scenario: Intento de desactivación manual de bloqueos en modo estricto
Given que el usuario ha iniciado una sesión con el modo "Inquebrantable" activo
And el temporizador de la sesión aún no ha llegado a cero
When el usuario intente apagar el escudo de distracciones de forma anticipada
Then el sistema debe denegar la acción de desactivación
And el sistema debe mostrar una alerta visual con el cronómetro del tiempo restante
