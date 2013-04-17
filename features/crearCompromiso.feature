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
    And presiono el boton para crear el compromiso <button>
    Then debe verse la pantalla con lo siguiente para el compromiso <resultado>
    And la base de datos debe contener el compromiso <nombreCompromiso>

Examples:
 | nombreCompromiso   | diafechaInicio | mesfechaInicio | aniofechaInicio | descripcionCompromiso        | button    | resultado        |
 | "nombre ejemplo 1" | "17"           | "April"        | "2013"          | "una descripcion cualquiera" | "Guardar" | "Reunion creada" |

  Scenario Outline: Crear un compromiso repetida
    When el nombre del compromiso es <nombreCompromiso>
    And la fecha limite del compromiso es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la descripcion del compromiso es <descripcionCompromiso>
    And presiono el boton para crear el compromiso <button>
    Then debe verse la pantalla con lo siguiente para el compromiso <resultado>
    And la base de datos debe contener dos veces el compromiso <nombreCompromiso>

Examples:
 | nombreCompromiso   | diafechaInicio | mesfechaInicio | aniofechaInicio | descripcionCompromiso        | button    | resultado        |
 | "nombre ejemplo 1" | "17"           | "April"        | "2013"          | "una descripcion cualquiera" | "Guardar" | "Reunion creada" |
