class RenameCityToAddress < ActiveRecord::Migration[5.0]
  def change
    rename_column :flats, :city, :address
  end
end
