class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|
      t.string :name
      t.string :description
      t.string :adress
      t.money :price
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
