class AddMembershipIdToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :membership_id, :integer

  end
end
