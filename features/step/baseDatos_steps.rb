# Se encuentran todos los pasos con acceso a base de datos

Then(/^la base de datos debe contener la tesis "(.*?)"$/) do |arg1|
  tesis = Tese.find_by_nombreTesis(arg1)
  assert_not_nil(tesis)
  assert_equal(arg1, tesis.nombreTesis)
end

Then(/^la base de datos no debe contener dos veces la tesis "(.*?)"$/) do |arg1|
  tesis = Tese.find_all_by_nombreTesis(arg1)
  assert_not_nil(tesis)
  assert_equal(1, tesis.size)
end

Then(/^la base de datos no debe contener la tesis "(.*?)"$/) do |arg1|
  tesis = Tese.find_all_by_nombreTesis(arg1)
  assert_not_nil(tesis)
  assert_equal(0, tesis.size)
end


Then(/^la base de datos debe contener la reunion "(.*?)"$/) do |arg1|
  reunion = Reunion.find_by_asunto_reu(arg1)
  assert_not_nil(reunion)
  assert_equal(arg1, reunion.asunto_reu)
end

Then(/^la base de datos debe contener dos veces la reunion "(.*?)"$/) do |arg1, arg2|
  reunion = Reunion.find_all_by_asunto_reu(arg1)
  assert_not_nil(reunion)
  assert_equal(2, reunion.size)
end