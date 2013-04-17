# Pasos propios de las pruebas a la historia de usuario crear reunion

When(/^el nombre de la reunion es "(.*?)"$/) do |arg1|
  fill_in('reunion_asunto_reu', :with=>arg1)
end

When(/^la fecha de inicio de la reunion es "(.*?)" "(.*?)" "(.*?)"$/) do |arg1, arg2, arg3|
  select(arg1, :from=>'reunion_fecha_reu_3i')
  select(arg2, :from=>'reunion_fecha_reu_2i')
  select(arg3, :from=>'reunion_fecha_reu_1i')
end

When(/^la hora de inicio de la reunion es "(.*?)" "(.*?)"$/) do |arg1, arg2|
  select(arg1, :from=>'reunion_fecha_reu_4i')
  select(arg2, :from=>'reunion_fecha_reu_5i')
end

When(/^la duracion de la reunion es "(.*?)" "(.*?)"$/) do |arg1, arg2|
  select(arg1, :from=>'reunion_duracion_reu_4i')
  select(arg2, :from=>'reunion_duracion_reu_5i')
end

When(/^el lugar de la reunion es "(.*?)"$/) do |arg1|
  fill_in('reunion_lugar', :with=>arg1)
end

When(/^el estudiante de la reunion es "(.*?)"$/) do |arg1|
  fill_in('reunion_estudiantes_id', :with=>arg1)
end

When(/^el profesor de la reunion es "(.*?)"$/) do |arg1|
  fill_in('reunion_profesors_id', :with=>arg1)
end