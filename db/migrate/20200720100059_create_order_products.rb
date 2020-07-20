class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.integer :genre_id
      t.integer :product_id
      t.integer :price_tax_inclued
      t.integer :number
      t.integer :production_status

      t.timestamps
    end
  end
end
