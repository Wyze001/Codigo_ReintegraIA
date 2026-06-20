# language: es
Característica: US05 - Configuración de usuarios y roles

  Como administrador de ReintegraIA
  Quiero consultar los usuarios, roles y permisos del sistema
  Para controlar el acceso a las funciones de la plataforma

  Antecedentes:
    Dado que el administrador ingresó a la sección Configuración

  Escenario: E1 - Visualizar las opciones de configuración
    Entonces el sistema muestra Usuarios y roles
    Y muestra Parámetros, Catálogos y Notificaciones
    Y muestra la opción Auditoría

  Esquema del escenario: E2 - Consultar el estado de un usuario
    Cuando el administrador busca al usuario "<entrada>"
    Entonces el sistema muestra el estado "<resultado>"

    Ejemplos:
      | entrada       | resultado |
      | Juan Perez    | Activo    |
      | Rodolfo Rojas | Activo    |
      | Emilia Perez  | Inactivo  |

  Escenario: E3 - Visualizar la matriz de permisos
    Entonces el sistema muestra el permiso Ver internos
    Y muestra el permiso Editar evaluaciones
    Y muestra el permiso Generar reportes

  Escenario: E4 - Identificar la opción seleccionada
    Cuando el administrador selecciona Usuarios y roles
    Entonces el sistema resalta la opción con el color principal de ReintegraIA
