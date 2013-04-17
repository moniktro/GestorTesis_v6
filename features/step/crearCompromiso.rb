When(/^el nombre del compromiso es "(.*?)"$/) do |arg1|
  fill_in('compromiso_asunto', :with=>arg1)
end

When(/^la fecha limite del compromiso es "(.*?)" "(.*?)" "(.*?)"$/) do |arg1, arg2, arg3|
  select(arg1, :from=>'compromiso_fechaLimite_3i')
  select(arg2, :from=>'compromiso_fechaLimite_2i')
  select(arg3, :from=>'compromiso_fechaLimite_1i')
end

When(/^la descripcion del compromiso es "(.*?)"$/) do |arg1|
  fill_in('compromiso_descripcionCompromiso', :with=>arg1)
end