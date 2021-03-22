class AddDateToWeddings < ActiveRecord::Migration[6.0]
  def change
    add_column :weddings, :date, :date
  end
end
