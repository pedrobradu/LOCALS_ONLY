class CreateWishlists < ActiveRecord::Migration[7.0]
  def change
    create_table :wishlists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wichlist_item, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
