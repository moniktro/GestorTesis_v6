class Reunion < ActiveRecord::Base
  attr_accessible :asunto_reu, :duracion_reu, :fecha_reu, :lugar, :teses_id
  validates_presence_of :asunto_reu, :fecha_reu, :duracion_reu, :lugar, :message => "No debe estar vacio."
  validates_length_of :asunto_reu, :in => 5..255, :message => "El asunto de la reunion debe contener entre 5 y 255 caracteres."
  has_many :estudiantes
  has_one :profesor
  belongs_to :teses
end
