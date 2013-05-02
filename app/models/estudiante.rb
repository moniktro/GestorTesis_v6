class Estudiante < ActiveRecord::Base
  attr_accessible :codigoEstudiante, :correoElectronico, :disponibilidadHoraria, :nombreEstudiante, :tesis_id
  validates_presence_of :nombreEstudiante, :codigoEstudiante, :correoElectronico, :tesis_id
  validates_uniqueness_of :codigoEstudiante, :message => "El codigo ya ha sido asignado a otro estudiante"
  validates_length_of :nombreEstudiante, :in => 2..100, :message => "El nombre deL estudiante debe tener entre 2 y 100 caracteres."
  validates_format_of :correoElectronico, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  belongs_to :teses, :foreign_key => "teses_id"
  has_and_belongs_to_many :compromisos
  has_and_belongs_to_many :reunions
end
