class Estudiante < ActiveRecord::Base
  attr_accessible :codigoEstudiante, :correoElectronico, :disponibilidadHoraria, :nombreEstudiante, :tesis_id
  validates_presence_of :nombreEstudiante
  validates_uniqueness_of :codigoEstudiante
  belongs_to :teses, :foreign_key => "teses_id"
  has_and_belongs_to_many :compromisos
  has_and_belongs_to_many :reunions
end
