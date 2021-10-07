class AddColumnToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :price, :decimal
    add_column :cars, :kind, :integer
    add_column :cars, :quantity, :integer
  end
end
