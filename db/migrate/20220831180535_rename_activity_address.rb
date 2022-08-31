class RenameActivityAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :activities, :activity_address, :address
  end
end
