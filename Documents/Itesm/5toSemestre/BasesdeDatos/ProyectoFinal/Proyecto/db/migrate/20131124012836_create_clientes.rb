class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.integer :edad
      t.string :nacionalidad
      t.string :pasaporte

      t.timestamps
    end
  end
end
