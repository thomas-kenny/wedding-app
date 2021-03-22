class RemoveTimeFromWeddings < ActiveRecord::Migration[6.0]
  def change
    remove_column :weddings, :date, :datetime
  end
end
