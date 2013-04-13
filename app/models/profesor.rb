class Profesor < ActiveRecord::Base
  attr_accessible :nombre
  validates_presence_of :nombre
  has_many :teses
end
