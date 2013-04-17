# Se encuentran todos los pasos iniciales que crean un escenario

Given(/^visito la pagina de crear tesis$/) do
 visit('http://localhost:3000/teses/new')
end

Given(/^visito la pagina de crear reunion$/) do
  visit('http://localhost:3000/reunions/new')
end

Given(/^visito la pagina de crear compromiso$/) do
  visit('http://localhost:3000/compromisos/new')
end