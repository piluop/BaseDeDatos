class CreateActividades < ActiveRecord::Migration
  def change
    create_table :actividades do |t|
      t.string :nombre
      t.integer :duracion
      t.integer :costo
      t.string :descripcion
      t.date :fecha

      t.timestamps
    end
  end
end
