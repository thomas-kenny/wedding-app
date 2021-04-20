class AddEmailsToRsvps < ActiveRecord::Migration[6.0]
  def change
    add_column :rsvps, :emails, :string
  end
end
