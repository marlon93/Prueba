class Region < ApplicationRecord

  has_many :municipios_regiones, dependent: :destroy
  has_many :municipios, through: :municipios_regiones

  validates :codigo, presence: true, uniqueness: true, numericality: { only_integer: true }
  
end
