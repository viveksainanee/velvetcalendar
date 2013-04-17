class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :status
      t.string :active
      t.float :lat
      t.float :lon

      t.timestamps
    end
  end
end
