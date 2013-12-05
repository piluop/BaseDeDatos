class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :nombre
      t.integer :capacidad
      t.date :fecha

      t.timestamps
    end
  end
end
