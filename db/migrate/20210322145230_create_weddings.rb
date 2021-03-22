class CreateWeddings < ActiveRecord::Migration[6.0]
  def change
    create_table :weddings do |t|
      t.string :groom_name
      t.string :bride_name
      t.datetime :date
      t.text :address

      t.timestamps
    end
  end
end
