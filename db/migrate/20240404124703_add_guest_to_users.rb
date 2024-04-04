class AddGuestToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :guest, :string
  end
end
