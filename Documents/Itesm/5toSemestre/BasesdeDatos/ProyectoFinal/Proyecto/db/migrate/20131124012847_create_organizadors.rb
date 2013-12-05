class CreateOrganizadors < ActiveRecord::Migration
  def change
    create_table :organizadors do |t|
      t.string :nombre
      t.integer :edad
      t.string :nomina

      t.timestamps
    end
  end
end
