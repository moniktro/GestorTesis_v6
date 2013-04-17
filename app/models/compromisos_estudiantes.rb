class CompromisosEstudiantes < ActiveRecord::Base
  attr_accessible :compromiso_id, :estudiante_id, :finalizado
  belongs_to :estudiante, :foreign_key => "estudiante_id"
  belongs_to :compromiso, :foreign_key => "compromiso_id"
end
