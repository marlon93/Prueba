class Municipio < ApplicationRecord

  has_many :municipios_regiones, dependent: :destroy
  has_many :regiones, through: :municipios_regiones
  
end
