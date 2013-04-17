class AddOwnerIdToCircles < ActiveRecord::Migration
  def change
    add_column :circles, :owner_id, :integer

  end
end
