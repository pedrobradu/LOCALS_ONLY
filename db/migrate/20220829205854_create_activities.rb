class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :types
      t.string :descriptions
      t.date :open_dates
      t.string :activity_address
      t.string :titles
      t.decimal :rankings

      t.timestamps
    end
  end
end
