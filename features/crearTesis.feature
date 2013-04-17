# La siguiente feature prueba la creación de una tesis

Feature: Crear una tesis
    In order to create a new thesis
    As a user
    I want to complete correctly the data

  Background: Todos los escenarios deben ser en la página de crear reunion
    Given visito la pagina de crear tesis

Scenario Outline: Crear correctamente una tesis
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

 Scenario Outline: Tratar de crear una tesis con nombre repetido
    When el nombre de la tesis es <nombreTesis>
    And el area de investigacion es <areaInvestigacion>
    And la fecha de inicio es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la fecha de fin es <diafechaFin> <mesfechaFin> <aniofechaFin>
    And la descripcion es <descripcionTesis>
    And presion el boton <button>
    Then debe verse la pantalla con lo siguiente <resultado>
    And la base de datos no debe contener dos veces la tesis <nombreTesis>

Examples:
 | nombreTesis        | areaInvestigacion        | diafechaInicio | mesfechaInicio    | aniofechaInicio | diafechaFin | mesfechaFin   | aniofechaFin | descripcionTesis                  | button    | resultado                  |
 | "Ejemplo de tesis" | "area de ivestigacion 1" | "22"           | "April"           | "2013"          | "22"        | "July"        | "2013"       | "Ejemplo de descripcion de tesis" | "Guardar" | "Este nombre de la tesis ya esta en uso." |

 Scenario Outline: Tratar de crear una tesis sin nombre
    When el nombre de la tesis es <nombreTesis>
    And el area de investigacion es <areaInvestigacion>
    And la fecha de inicio es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la fecha de fin es <diafechaFin> <mesfechaFin> <aniofechaFin>
    And la descripcion es <descripcionTesis>
    And presion el boton <button>
    Then debe verse la pantalla con lo siguiente <resultado>
    And la base de datos no debe contener la tesis <nombreTesis>

Examples:
 | nombreTesis | areaInvestigacion        | diafechaInicio | mesfechaInicio    | aniofechaInicio | diafechaFin | mesfechaFin   | aniofechaFin | descripcionTesis                  | button    | resultado                                                    |
 | ""          | "area de ivestigacion 1" | "22"           | "April"           | "2013"          | "22"        | "July"        | "2013"       | "Ejemplo de descripcion de tesis" | "Guardar" | "El nombre de la tesis debe tener entre 5 y 255 caracteres." |
 | " "         | "area de ivestigacion 1" | "22"           | "April"           | "2013"          | "22"        | "July"        | "2013"       | "Ejemplo de descripcion de tesis" | "Guardar" | "El nombre de la tesis debe tener entre 5 y 255 caracteres." |

 Scenario Outline: Tratar de crear una tesis sin area de investigacion
    When el nombre de la tesis es <nombreTesis>
    And el area de investigacion es <areaInvestigacion>
    And la fecha de inicio es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la fecha de fin es <diafechaFin> <mesfechaFin> <aniofechaFin>
    And la descripcion es <descripcionTesis>
    And presion el boton <button>
    Then debe verse la pantalla con lo siguiente <resultado>
    And la base de datos no debe contener la tesis <nombreTesis>

Examples:
 | nombreTesis     | areaInvestigacion | diafechaInicio | mesfechaInicio    | aniofechaInicio | diafechaFin | mesfechaFin   | aniofechaFin | descripcionTesis                  | button    | resultado                                 |
 | "nombrePrueba1" | ""                | "22"           | "April"           | "2013"          | "22"        | "July"        | "2013"       | "Ejemplo de descripcion de tesis" | "Guardar" | "El nombre del area de investigacion debe tener entre 3 y 30 caracteres." |
 | "nombrePrueba2" | " "               | "22"           | "April"           | "2013"          | "22"        | "July"        | "2013"       | "Ejemplo de descripcion de tesis" | "Guardar" | "El nombre del area de investigacion debe tener entre 3 y 30 caracteres." |
