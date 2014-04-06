class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :headline
      t.string :description
      t.integer :place_id
      t.string :image_url
      t.boolean :y1940s
      t.boolean :y1950s
      t.boolean :y1960s
      t.boolean :y1970s
      t.boolean :y1980s
      t.boolean :y1990s
      t.boolean :y2000s
      t.boolean :y2010s

      t.timestamps
    end
  end
end
