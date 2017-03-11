class RenameDurationToLeavingTime < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :duration, :leaving_date
  end
end
