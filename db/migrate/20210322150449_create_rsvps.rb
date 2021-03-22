class CreateRsvps < ActiveRecord::Migration[6.0]
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :email
      t.boolean :attending
      t.references :wedding, null: false, foreign_key: true

      t.timestamps
    end
  end
end
