class CreateHoteles < ActiveRecord::Migration
  def change
    create_table :hoteles do |t|
      t.string :nombre
      t.string :categoria
      t.string :ubicacion
      t.date :fechaen
      t.date :fechasa

      t.timestamps
    end
  end
end
