class CreateViajes < ActiveRecord::Migration
  def change
    create_table :viajes do |t|
      t.string :nombre
      t.integer :duracion
      t.integer :costo
      t.string :continente

      t.timestamps
    end
  end
end
