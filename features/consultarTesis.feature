# La siguiente feature prueba la consultar de unas tesis

Feature: Consultar una tesis
    In order to consult these
    As a user
    I want to see all of my these

  Background: Todos los escenarios deben empezar en la pagina de consultar tesis
    Given visito la pagina de consultar tesis

Scenario Outline: Crear una tesis para luego de consultar
    When el nombre de la tesis es <nombreTesis>
    And el area de investigacion es <areaInvestigacion>
    And la fecha de inicio es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la fecha de fin es <diafechaFin> <mesfechaFin> <aniofechaFin>
    And la descripcion es <descripcionTesis>
    And presion el boton <button>
    Then debe verse la pantalla con lo siguiente <resultado>
    And la base de datos debe contener la tesis <nombreTesis>

Examples:
 | nombreTesis        | areaInvestigacion        | diafechaInicio | mesfechaInicio    | aniofechaInicio | diafechaFin | mesfechaFin   | aniofechaFin | descripcionTesis                  | button    | resultado      |
 | "Ejemplo de tesis" | "area de ivestigacion 1" | "22"           | "April"           | "2013"          | "22"        | "July"        | "2013"       | "Ejemplo de descripcion de tesis" | "Guardar" | "Tesis creada" |
