# Acciones dentro de la página, como hacer click en botones

When(/^presion el boton "(.*?)"$/) do |arg1|
  click_button(arg1)
end

When(/^presiono el boton para crear la reunion "(.*?)"$/) do |arg1|
  click_button(arg1)
end