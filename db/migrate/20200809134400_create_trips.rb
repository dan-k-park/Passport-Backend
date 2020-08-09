class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :country_id
      t.boolean :favorite
      t.text :comment

      t.timestamps
    end
  end
end
