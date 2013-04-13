class Tese < ActiveRecord::Base
  attr_accessible :areaInvestigacion, :descripcionTesis, :fechaFin, :fechaInicio, :finalizado, :nombreTesis, :profesor_id
  validates_presence_of :nombreTesis, :areaInvestigacion, :fechaInicio, :fechaFin, :message => "no debe estar vacio"
  validates_uniqueness_of :nombreTesis, :message => "El nombre ya esta en uso"
  validates_length_of :nombreTesis, :areaInvestigacion, :in => 10..255, :message => "debe tener entre 10 y 255 caracteres"
  belongs_to :profesor
  has_many :estudiantes
end
