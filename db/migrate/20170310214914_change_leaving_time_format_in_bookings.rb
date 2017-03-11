class ChangeLeavingTimeFormatInBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :leaving_date
  end
end
