class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nomina
      t.integer :sueldo
      t.integer :edad

      t.timestamps
    end
  end
end
