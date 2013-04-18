Given(/^Debo crear un compromiso$/) do
 visit('http://localhost:3000/compromisos/new?tesisId=1')
end

When(/^Asunto del compromiso es "(.*?)"$/) do |arg1|
  fill_in('compromiso_asunto', :with=>arg1)
end

When(/^Descripcion del compromiso es "(.*?)"$/) do |arg1|
  fill_in('compromiso_Descripcion', :with=>arg1)
end
When(/^Dia Fecha Limite es "(.*?)"$/) do |arg1|
  fill_in('compromiso_fechaLimite_3i', :with=>arg1)
end
When(/^Mes Fecha Limite es "(.*?)"$/) do |arg1|
  fill_in('compromiso_fechaLimite_2i', :with=>arg1)
end

When(/^Anio Fecha Limite es "(.*?)"$/) do |arg1|
  fill_in('compromiso_fechaLimite_1i', :with=>arg1)
end

When(/^Finalizado es "(.*?)"$/) do |arg1|
  fill_in('tese_areaInvestigacion', :with=>arg1)
end
When(/^Codigo del estudiante es "(.*?)"$/) do |arg1|
  check(find("input[type='checkbox']"), [1])
end
When(/^Presiono el boton "(.*?)"$/) do |arg1|
  click_button(arg1)
end
Then(/^debo ver en la pantalla "(.*?)"$/) do |arg1|
  has_text?(arg1)
end
