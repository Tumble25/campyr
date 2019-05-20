class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :campsite, foreign_key: true
      t.date :arrival
      t.date :departure
      t.string :status

      t.timestamps
    end
  end
end
