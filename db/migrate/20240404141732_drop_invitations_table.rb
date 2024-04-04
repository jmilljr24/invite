class DropInvitationsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :invitations, if_exists: true
  end
end
