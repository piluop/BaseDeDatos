class Actividade < ActiveRecord::Base
  attr_accessible :costo, :descripcion, :duracion, :fecha, :nombre
end
