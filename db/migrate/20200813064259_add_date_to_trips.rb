class AddDateToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :date, :string
  end
end
