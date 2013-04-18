# some comment
# language: en
@foo34 @bar
Feature: Create a commitment
  As a teacher
  I want to create a commitment
  So I can follow students activities and project progress

  @bar
  Scenario Outline: Crear correctamente un compromiso
    Given Debo crear un compromiso
    And Asunto del compromiso es <asuntoCompromiso>
    And Descripcion del compromiso es <descripcionCompromiso>
    And Dia Fecha Limite es <diaFechaLimite>
    And Mes Fecha Limite es <mesFechaLimite>
    And Anio Fecha Limite es <anioFechaLimite>
    And Finalizado es <finalizado>
    And Codigo del estudiante es <estudianteId>
    When Presiono el boton <boton>
    Then debo ver en la pantalla <resultado>

  Examples:
      | asuntoCompromiso|descripcionCompromiso|diaFechaLimite|mesFechaLimite|anioFechaLimite|finalizado|estudianteId|boton|Resultado|
      | "Revision objetivos"  | "Realizar la revision de compromisos" |30|4|2013|0|1|"Guardar"|"Compromiso creado"|
      # since 0.7 this is still allowed
      
 #   @new_tag
    #Scenarios: some other examples with a description
#and guess what?!? I can have multilines as well! # look at me, I'm a comment (not supported by cucumber)
#Who would have thunk?
#      | var1 | var2 |
#      | foo  | bar  |
#      | dog  | food |

 # @some_tag @another_tag
 # Scenario: more examples
 #   will follow after this multi-line description
 #   Given some context # this is an inline comment (no longer supported by cucumber)
