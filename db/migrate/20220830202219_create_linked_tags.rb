class CreateLinkedTags < ActiveRecord::Migration[7.0]
  def change
    create_table :linked_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :tagable, null: false, polymorphic: true, index: true

      t.timestamps
    end
  end
end
