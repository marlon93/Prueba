class CreateMunicipiosRegiones < ActiveRecord::Migration[5.2]
  def change
    create_table :municipios_regiones do |t|
      t.references :municipio, foreign_key: true
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
