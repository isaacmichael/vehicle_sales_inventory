class CreateVehicleSales < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_sales do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.integer :price
      t.integer :mileage
      t.string :spec

      t.timestamps
    end
  end
end
