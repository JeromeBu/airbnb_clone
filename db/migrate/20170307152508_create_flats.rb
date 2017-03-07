class CreateFlats < ActiveRecord::Migration[5.0]
  def change
    create_table :flats do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :city
      t.integer :max_guests
      t.integer :price_per_night

      t.timestamps
    end
  end
end
