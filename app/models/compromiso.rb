class Compromiso < ActiveRecord::Base
  attr_accessible :asunto, :descripcionCompromiso, :estudiantes_id, :fechaLimite, :finalizado, :profesors_id, :teses_id
  validates_presence_of :asunto, :fechaLimite, :message => "Dato requerido"
  has_and_belongs_to_many :estudiantes
  validates_length_of :asunto, :in => 5..255, :message => "Debe tener entre 5 y 255 caracteres"
  validates_length_of :descripcionCompromiso, :in => 5..255, :message => "Debe tener entre 5 y 255 caracteres"
end