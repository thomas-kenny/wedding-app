class AddCoordinatesToWeddings < ActiveRecord::Migration[6.0]
  def change
    add_column :weddings, :latitude, :float
    add_column :weddings, :longitude, :float
  end
end
