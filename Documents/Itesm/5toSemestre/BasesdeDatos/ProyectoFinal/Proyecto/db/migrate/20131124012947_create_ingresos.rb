class CreateIngresos < ActiveRecord::Migration
  def change
    create_table :ingresos do |t|
      t.integer :ingresos
      t.date :fecha

      t.timestamps
    end
  end
end
