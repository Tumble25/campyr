class ChangeAdressToAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :campsites, :adress, :address
  end
end
