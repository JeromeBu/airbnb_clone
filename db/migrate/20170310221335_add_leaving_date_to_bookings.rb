class AddLeavingDateToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :leaving_date, :date
  end
end
