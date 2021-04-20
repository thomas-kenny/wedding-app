class AddSongsToRsvps < ActiveRecord::Migration[6.0]
  def change
    add_column :rsvps, :songs, :text
  end
end
