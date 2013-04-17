# Los pasos para llenar información en la página en la que se está

When(/^el nombre de la tesis es "(.*?)"$/) do |arg1|
  fill_in('tese_nombreTesis', :with=>arg1)
end

When(/^el area de investigacion es "(.*?)"$/) do |arg1|
  fill_in('tese_areaInvestigacion', :with=>arg1)
end

When(/^la fecha de inicio es "(.*?)" "(.*?)" "(.*?)"$/) do |arg1, arg2, arg3|
  select(arg1, :from=>'tese_fechaInicio_3i')
  select(arg2, :from=>'tese_fechaInicio_2i')
  select(arg3, :from=>'tese_fechaInicio_1i')
end

When(/^la fecha de fin es "(.*?)" "(.*?)" "(.*?)"$/) do |arg1, arg2, arg3|
  select(arg1, :from=>'tese_fechaFin_3i')
  select(arg2, :from=>'tese_fechaFin_2i')
  select(arg3, :from=>'tese_fechaFin_1i')
end

When(/^la descripcion es "(.*?)"$/) do |arg1|
  fill_in('tese_descripcionTesis', :with=>arg1)
end