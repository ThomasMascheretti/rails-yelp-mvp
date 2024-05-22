class RenameColumnAddress < ActiveRecord::Migration[7.1]
  def change
    rename_column :restaurants, :adress, :address
    change_column :restaurants, :phone_number, :string
  end
end
