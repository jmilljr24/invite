class CreateInvitations < ActiveRecord::Migration[7.1]
  def change
    create_table :invitations do |t|
      t.boolean :rehearsal, default: false, null: false
      t.boolean :attending_rehearsal, default: false, null: false
      t.boolean :attending_wedding, default: false, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
