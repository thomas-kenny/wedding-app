class AddDietaryRequirementsToRsvps < ActiveRecord::Migration[6.0]
  def change
    add_column :rsvps, :dietary_requirements, :text
  end
end
