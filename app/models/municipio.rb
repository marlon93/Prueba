class Municipio < ApplicationRecord

  has_many :municipios_regiones, dependent: :destroy
  has_many :regiones, through: :municipios_regiones

  validates :codigo, presence: true, uniqueness: true, numericality: { only_integer: true }

  after_update :eliminar_asociaciones

  def eliminar_asociaciones
    unless self.estado
      MunicipioRegion.where("municipio_id = ?", self.id).destroy_all
    end
  end

end
