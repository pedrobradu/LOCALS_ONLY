class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :sub_category
      t.string :tag_name
      t.string :tag_type

      t.timestamps
    end
  end
end
