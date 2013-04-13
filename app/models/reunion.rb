class Reunion < ActiveRecord::Base
  attr_accessible :asunto_reu, :duracion_reu, :estudiantes_id, :fecha_reu, :lugar, :profesors_id, :teses_id
  validates_presence_of :asunto_reu, :fecha_reu, :duracion_reu, :lugar, :estudiantes_id, :profesors_id, :message => "No debe estar vacio"
  validates_length_of :asunto_reu, :in => 1..255, :message => "Debe contener entre 1 y 255 caracteres"
  #validates_date :fechaInicio, :before => :fechaFin
  has_many :estudiantes
  has_one :profesor
  belongs_to :teses
end
