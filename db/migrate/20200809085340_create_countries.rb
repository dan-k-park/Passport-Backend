class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :capital
      t.integer :visits
      t.integer :favorites

      t.timestamps
    end
  end
end
