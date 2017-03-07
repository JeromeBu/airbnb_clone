class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true
      t.integer :nb_guests
      t.date :arrival_date
      t.integer :duration
      t.boolean :accepted

      t.timestamps
    end
  end
end
