class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :title
      t.text :description
      t.string :status
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
