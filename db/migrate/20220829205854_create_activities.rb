class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :description
      t.date :open_date
      t.string :activity_address
      t.string :title
      t.decimal :ranking
      t.string :image

      t.timestamps
    end
  end
end
