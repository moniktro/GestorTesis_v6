class Tese < ActiveRecord::Base
  attr_accessible :areaInvestigacion, :descripcionTesis, :fechaFin, :fechaInicio, :finalizado, :nombreTesis, :profesor_id
  #validates(:nombreTesis=>true) { |i|  }
  validates_date :fechaInicio, :before => :fechaFin, :before_message => "La fecha fin debe ser despues de la fecha inicio"
  validates_presence_of :nombreTesis, :areaInvestigacion, :message => "Los campos con * no pueden estar vacios."
  validates_uniqueness_of :nombreTesis, :message => "Este nombre de la tesis ya esta en uso."
  validates_length_of :nombreTesis, :in => 5..255, :message => "El nombre de la tesis debe tener entre 5 y 255 caracteres."
  validates_length_of :areaInvestigacion, :in => 3..100, :message => "El nombre del area de investigacion debe tener entre 3 y 30 caracteres."
  belongs_to :profesor
  has_many :estudiantes
end
