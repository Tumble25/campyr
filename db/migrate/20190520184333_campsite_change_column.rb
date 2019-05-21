class CampsiteChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :campsites, :price, :decimal
  end
end
