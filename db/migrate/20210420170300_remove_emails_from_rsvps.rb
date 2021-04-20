class RemoveEmailsFromRsvps < ActiveRecord::Migration[6.0]
  def change
    remove_column :rsvps, :emails, :string
  end
end
