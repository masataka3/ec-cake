class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :family_name, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :family_name_kana, :string
    add_column :users, :phone_number, :string
    add_column :users, :post_code, :string
    add_column :users, :address, :string

  end
end
