class CreateCarDealerships < ActiveRecord::Migration[6.1]
  def change
    create_table :car_dealerships do |t|
      t.references :car, null: false, foreign_key: true
      t.references :dealership, null: false, foreign_key: true

      t.timestamps
    end
  end
end
