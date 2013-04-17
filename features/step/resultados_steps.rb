# Se muestra las acciones qu buscan dentro de la página los cambios deseados

Then(/^debe verse la pantalla con lo siguiente "(.*?)"$/) do |arg1|
  has_text?(arg1)
end

Then(/^debe verse la pantalla con lo siguiente para la reunion "(.*?)"$/) do |arg1|
  has_text?(arg1)
end