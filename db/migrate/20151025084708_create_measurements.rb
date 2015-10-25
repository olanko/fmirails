class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :val
      t.string :name
      t.string :position
      t.datetime :ts
      t.datetime :inserted

      t.timestamps null: false
    end
  end
end
