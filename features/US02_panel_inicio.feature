# language: es
Característica: US02 - Visualización del panel principal

  Como especialista de ReintegraIA
  Quiero visualizar un resumen de la información principal
  Para conocer rápidamente el estado general de los internos y sus procesos

  Antecedentes:
    Dado que el especialista ingresó a la página de Inicio

  Escenario: E1 - Visualizar las tarjetas de resumen
    Entonces el sistema muestra la cantidad de internos registrados
    Y muestra las evaluaciones, alertas y reportes disponibles
    Y cada tarjeta contiene su icono y estado de actualización

  Esquema del escenario: E2 - Consultar un indicador del panel
    Cuando el especialista visualiza el indicador "<entrada>"
    Entonces el sistema presenta "<resultado>"

    Ejemplos:
      | entrada      | resultado                       |
      | Internos     | Total de internos registrados   |
      | Evaluaciones | Total de evaluaciones realizadas |
      | Alertas      | Alertas de prioridad alta       |
      | Reportes     | Total de reportes disponibles   |

  Escenario: E3 - Visualizar las alertas de seguimiento
    Entonces el sistema muestra la evaluación pendiente
    Y muestra la sesión psicológica programada
    Y resalta el documento vencido con un color de advertencia

  Escenario: E4 - Visualizar la actividad reciente
    Entonces el sistema muestra una tabla con los internos evaluados
    Y muestra el tipo de evaluación, área, estado y nivel de riesgo
