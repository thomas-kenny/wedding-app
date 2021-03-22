class RemoveGroomNameFromWeddings < ActiveRecord::Migration[6.0]
  def change
    remove_column :weddings, :groom_name, :string
    remove_column :weddings, :bride_name, :string
  end
end
