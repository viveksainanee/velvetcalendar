class CreateCircles < ActiveRecord::Migration
  def change
    create_table :circles do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
