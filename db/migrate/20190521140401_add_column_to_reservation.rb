class AddColumnToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :total_price, :decimal
  end
end
