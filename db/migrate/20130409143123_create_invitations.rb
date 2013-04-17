class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :event_id
      t.integer :circle_id
      t.datetime :sent_at
      t.datetime :rsvp
      t.string :status

      t.timestamps
    end
  end
end
