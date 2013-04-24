class Compromiso < ActiveRecord::Base
  attr_accessible :asunto, :descripcionCompromiso, :estudiantes_id, :fechaLimite, :finalizado, :profesors_id, :teses_id
  validates_presence_of :asunto, :message => "Por favor ingresar el asunto del compromiso."
  validates_presence_of :fechaLimite, :message => "Por favor ingresar una fecha limite al compromiso."
  has_and_belongs_to_many :estudiantes
  validates_length_of :asunto, :in => 5..255, :message => "Debe tener entre 5 y 255 caracteres"
  #validates_length_of :descripcionCompromiso, :in => 5..255, :message => "Debe tener entre 5 y 255 caracteres"
  #validates_date :fechaLimite, :timeliness => {:on_or_before => lambda {Date.current}}, :before_message => "La fecha limite del compromiso deber igual o posterior a la fecha actual"
end