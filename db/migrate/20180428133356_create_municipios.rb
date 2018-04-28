class CreateMunicipios < ActiveRecord::Migration[5.2]
  def change
    create_table :municipios, id: false, primary_key: :codigo do |t|
      t.integer :codigo
      t.string :nombre
      t.boolean :estado, :default => true

      t.timestamps
    end
  end
end
