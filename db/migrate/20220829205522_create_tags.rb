class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :categories
      t.string :tag_names

      t.timestamps
    end
  end
end
