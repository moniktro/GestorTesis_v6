# La siguiente feature prueba el crear reuniones

Feature: Crear una reunion
    In order to create a new reunion
    As a user
    I want to complete correctly the data

  Background: Todos los escenarios deben empezar en la página de crear reunion
    Given visito la pagina de crear reunion

  Scenario Outline: Crear una reunion nueva
    When el nombre de la reunion es <nombreReunion>
    And la fecha de inicio de la reunion es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la hora de inicio de la reunion es <horaInicio> <minutoInicio>
    And la duracion de la reunion es <horaDuracion> <minutoDuracion>
    And el lugar de la reunion es <lugarReunion>
    And el estudiante de la reunion es <estudiante>
    And el profesor de la reunion es <profesor>
    And presiono el boton para crear la reunion <button>
    Then debe verse la pantalla con lo siguiente para la reunion <resultado>
    And la base de datos debe contener la reunion <nombreReunion>

Examples:
 | nombreReunion      | diafechaInicio | mesfechaInicio | aniofechaInicio | horaInicio | minutoInicio | horaDuracion | minutoDuracion | lugarReunion | estudiante      | profesor        | button    | resultado        |
 | "nombre ejemplo 1" | "17"           | "April"        | "2013"          | "15"       | "30"         | "03"         | "00"            | "ML-508"     | "Laura Riveros" | "Darío Correal" | "Guardar" | "Reunion creada" |

  Scenario Outline: Crear una reunion repetida
    When el nombre de la reunion es <nombreReunion>
    And la fecha de inicio de la reunion es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la hora de inicio de la reunion es <horaInicio> <minutoInicio>
    And la duracion de la reunion es <horaDuracion> <minutoDuracion>
    And el lugar de la reunion es <lugarReunion>
    And el estudiante de la reunion es <estudiante>
    And el profesor de la reunion es <profesor>
    And presiono el boton para crear la reunion <button>
    Then debe verse la pantalla con lo siguiente para la reunion <resultado>
    And la base de datos debe contener dos veces la reunion <nombreReunion>

Examples:
 | nombreReunion      | diafechaInicio | mesfechaInicio | aniofechaInicio | horaInicio | minutoInicio | horaDuracion | minutoDuracion | lugarReunion | estudiante      | profesor        | button    | resultado        |
 | "nombre ejemplo 1" | "17"           | "April"        | "2013"          | "15"       | "30"         | "03"         | "00"            | "ML-508"     | "Laura Riveros" | "Darío Correal" | "Guardar" | "Reunion creada" |

  Scenario Outline: Crear una reunion con dos estudiantes
    When el nombre de la reunion es <nombreReunion>
    And la fecha de inicio de la reunion es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la hora de inicio de la reunion es <horaInicio> <minutoInicio>
    And la duracion de la reunion es <horaDuracion> <minutoDuracion>
    And el lugar de la reunion es <lugarReunion>
    And los estudiantes de la reunion son <estudiante1> <estudiante2>
    And el profesor de la reunion es <profesor>
    And presiono el boton para crear la reunion <button>
    Then debe verse la pantalla con lo siguiente para la reunion <resultado>
    And la base de datos debe contener la reunion <nombreReunion>

Examples:
 | nombreReunion      | diafechaInicio | mesfechaInicio | aniofechaInicio | horaInicio | minutoInicio | horaDuracion  | minutoDuracion | lugarReunion | estudiante1      | estudiante2      | profesor        | button    | resultado        |
 | "nombre ejemplo 1" | "17"           | "April"        | "2013"          | "15"       | "30"         | "03"          | "00"            | "ML-508"     | "Laura Riveros" | "Monica Trujillo" | "Darío Correal" | "Guardar" | "Reunion creada" |

 Scenario Outline: Tratar de crear una reunion sin asunto
    When el nombre de la reunion es <nombreReunion>
    And la fecha de inicio de la reunion es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la hora de inicio de la reunion es <horaInicio> <minutoInicio>
    And la duracion de la reunion es <horaDuracion> <minutoDuracion>
    And el lugar de la reunion es <lugarReunion>
    And los estudiantes de la reunion son <estudiante1> <estudiante2>
    And el profesor de la reunion es <profesor>
    And presiono el boton para crear la reunion <button>
    Then debe verse la pantalla con lo siguiente para la reunion <resultado>
    And la base de datos debe contener la reunion <nombreReunion>

Examples:
 | nombreReunion | diafechaInicio | mesfechaInicio | aniofechaInicio | horaInicio | minutoInicio | horaDuracion  | minutoDuracion | lugarReunion | estudiante1      | estudiante2      | profesor        | button    | resultado        |
 | ""            | "17"           | "April"        | "2013"          | "15"       | "30"         | "03"          | "00"           | "ML-508"     | "Laura Riveros" | "Monica Trujillo" | "Darío Correal" | "Guardar" | "Reunion creada" |
 | " "           | "17"           | "April"        | "2013"          | "15"       | "30"         | "03"          | "00"           | "ML-508"     | "Laura Riveros" | "Monica Trujillo" | "Darío Correal" | "Guardar" | "Reunion creada" |

Scenario Outline: Tratar de crear un compromiso sin fecha
    When el nombre de la reunion es <nombreReunion>
    And la fecha de inicio de la reunion es <diafechaInicio> <mesfechaInicio> <aniofechaInicio>
    And la hora de inicio de la reunion es <horaInicio> <minutoInicio>
    And la duracion de la reunion es <horaDuracion> <minutoDuracion>
    And el lugar de la reunion es <lugarReunion>
    And los estudiantes de la reunion son <estudiante1> <estudiante2>
    And el profesor de la reunion es <profesor>
    And presiono el boton para crear la reunion <button>
    Then debe verse la pantalla con lo siguiente para la reunion <resultado>
    And la base de datos debe contener la reunion <nombreReunion>

Examples:
 | nombreReunion      | diafechaInicio | mesfechaInicio | aniofechaInicio | horaInicio | minutoInicio | horaDuracion  | minutoDuracion | lugarReunion | estudiante1      | estudiante2      | profesor        | button    | resultado        |
 | "nombre ejemplo 2" | ""             | ""             | ""              | "05"       | "30"         | "03"          | "00"           | "ML-508"     | "Laura Riveros" | "Monica Trujillo" | "Darío Correal" | "Guardar" | "Reunion creada" |
 | "nombre ejemplo 3" | " "            | " "            | " "             | "05"       | "30"         | "03"          | "00"           | "ML-508"     | "Laura Riveros" | "Monica Trujillo" | "Darío Correal" | "Guardar" | "Reunion creada" |
