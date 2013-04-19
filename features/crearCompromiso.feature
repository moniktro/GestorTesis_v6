# La siguiente feature prueba el crear compromiso

Feature: Crear un compromiso
    In order to create a new commitment
    As a user
    I want to complete correctly the data

  Background: Todos los escenarios deben empezar en la página de crear compromiso
    Given visito la pagina de crear compromiso

  Scenario Outline: Crear un compromiso nuevo
    When el nombre del compromiso es <nombreCompromiso>
    And la fecha limite del compromiso es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la descripcion del compromiso es <descripcionCompromiso>
    And el estudiante del compromiso es <estudiante1>
    And presiono el boton para crear el compromiso <button>
    Then debe verse la pantalla con lo siguiente para el compromiso <resultado>
    And la base de datos debe contener el compromiso <nombreCompromiso>

Examples:
 | nombreCompromiso   | diafechaInicio | mesfechaInicio | aniofechaInicio | descripcionCompromiso        | estudiante1     | button    | resultado        |
 | "nombre ejemplo 1" | "17"           | "April"        | "2013"          | "una descripcion cualquiera" | "Laura Riveros" | "Guardar" | "Reunion creada" |

  Scenario Outline: Crear un compromiso repetida
    When el nombre del compromiso es <nombreCompromiso>
    And la fecha limite del compromiso es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la descripcion del compromiso es <descripcionCompromiso>
    And el estudiante del compromiso es <estudiante1>
    And presiono el boton para crear el compromiso <button>
    Then debe verse la pantalla con lo siguiente para el compromiso <resultado>
    And la base de datos debe contener dos veces el compromiso <nombreCompromiso>

Examples:
 | nombreCompromiso   | diafechaInicio | mesfechaInicio | aniofechaInicio | descripcionCompromiso        | estudiante1     | button    | resultado        |
 | "nombre ejemplo 1" | "17"           | "April"        | "2013"          | "una descripcion cualquiera" | "Laura Riveros" | "Guardar" | "Reunion creada" |

 Scenario Outline: Tratar de crear un compromiso sin asunto
    When el nombre del compromiso es <nombreCompromiso>
    And la fecha limite del compromiso es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la descripcion del compromiso es <descripcionCompromiso>
    And el estudiante del compromiso es <estudiante1>
    And presiono el boton para crear el compromiso <button>
    Then debe verse la pantalla con lo siguiente para el compromiso <resultado>
    And la base de datos debe contener dos veces el compromiso <nombreCompromiso>

Examples:
 | nombreCompromiso | diafechaInicio | mesfechaInicio | aniofechaInicio | descripcionCompromiso        | estudiante1     | button    | resultado                                      |
 | ""               | "17"           | "April"        | "2013"          | "una descripcion cualquiera" | "Laura Riveros" | "Guardar" | "Por favor ingresar el asunto del compromiso." |
 | " "              | "17"           | "April"        | "2013"          | "una descripcion cualquiera" | "Laura Riveros" | "Guardar" | "Por favor ingresar el asunto del compromiso." |

  Scenario Outline: Tratar de crear un compromiso sin fecha
    When el nombre del compromiso es <nombreCompromiso>
    And la fecha limite del compromiso es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la descripcion del compromiso es <descripcionCompromiso>
    And el estudiante del compromiso es <estudiante1>
    And presiono el boton para crear el compromiso <button>
    Then debe verse la pantalla con lo siguiente para el compromiso <resultado>
    And la base de datos debe contener dos veces el compromiso <nombreCompromiso>

Examples:
 | nombreCompromiso   | diafechaInicio | mesfechaInicio | aniofechaInicio | descripcionCompromiso        | estudiante1     | button    | resultado                                      |
 | "nombre ejemplo 2" | ""             | ""             | ""              | "una descripcion cualquiera" | "Laura Riveros" | "Guardar" | "Por favor ingresar el asunto del compromiso." |
 | "nombre ejemplo 2" | " "            | " "            | " "             | "una descripcion cualquiera" | "Laura Riveros" | "Guardar" | "Por favor ingresar el asunto del compromiso." |

   Scenario Outline: Crear un compromiso con dos estudiantes
    When el nombre del compromiso es <nombreCompromiso>
    And la fecha limite del compromiso es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la descripcion del compromiso es <descripcionCompromiso>
    And los estudiantes del compromiso son <estudiante1> <estudiante2>
    And presiono el boton para crear el compromiso <button>
    Then debe verse la pantalla con lo siguiente para el compromiso <resultado>
    And la base de datos debe contener dos veces el compromiso <nombreCompromiso>

Examples:
 | nombreCompromiso   | diafechaInicio | mesfechaInicio | aniofechaInicio | descripcionCompromiso        | estudiante1     | estudiante2       | button    | resultado                                     |
 | "nombre ejemplo 3" | "17"           | "April"        | "2013"          | "una descripcion cualquiera" | "Laura Riveros" | "Monica Trujillo" |"Guardar" | "Por favor ingresar el asunto del compromiso." |
 | "nombre ejemplo 3" | "17"           | "April"        | "2013"          | "una descripcion cualquiera" | "Laura Riveros" | "Monica Trujillo" | "Guardar" | "Por favor ingresar el asunto del compromiso." |
 