class Cliente < ActiveRecord::Base
  attr_accessible :edad, :nacionalidad, :nombre, :pasaporte
end
