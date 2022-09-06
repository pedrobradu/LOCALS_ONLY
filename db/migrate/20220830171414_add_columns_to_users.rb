class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :birth_date, :date
    add_column :users, :image, :string
    add_column :users, :state, :string
  end
end
