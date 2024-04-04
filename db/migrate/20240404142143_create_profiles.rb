class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :guest
      t.boolean :rehearsal
      t.boolean :attending_rehearsal
      t.boolean :attending_wedding
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
