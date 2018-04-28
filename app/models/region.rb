class Region < ApplicationRecord

  has_many :municipios_regiones, dependent: :destroy
  has_many :municipios, through: :municipios_regiones

end
