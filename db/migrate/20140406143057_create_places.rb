class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :postcode
      t.point  :location, :srid => 4326, :null => false

      t.timestamps
    end
  end
end
