class AddNameToWedding < ActiveRecord::Migration[6.0]
  def change
    add_column :weddings, :name, :string
  end
end
