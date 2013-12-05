class CreateTransportes < ActiveRecord::Migration
  def change
    create_table :transportes do |t|
      t.string :tipo
      t.date :fecha

      t.timestamps
    end
  end
end
