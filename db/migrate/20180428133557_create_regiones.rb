class CreateRegiones < ActiveRecord::Migration[5.2]
  def change
    create_table :regiones do |t|
      t.integer :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
