class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :postage
      t.integer :amount_prace
      t.integer :payment_method
      t.integer :order_status
      t.string :address
      t.string :name
      t.string :post_code

      t.timestamps
    end
  end
end
