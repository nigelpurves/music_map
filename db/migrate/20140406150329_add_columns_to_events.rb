class AddColumnsToEvents < ActiveRecord::Migration
  def change
    change_column :events, :description, :text
    add_column :events, :date, :datetime
  end
end
