class Compromiso < ActiveRecord::Base
  attr_accessible :asunto, :descripcionCompromiso, :estudiantes_id, :fechaLimite, :finalizado, :profesors_id, :teses_id
end
