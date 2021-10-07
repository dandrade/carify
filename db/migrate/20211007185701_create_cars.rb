class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.references :car_brand, null: false, foreign_key: true
      t.string :model
      t.string :color
      t.string :name
      t.integer :doors

      t.timestamps
    end
  end
end
