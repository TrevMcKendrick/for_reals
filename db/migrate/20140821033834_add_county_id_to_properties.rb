class AddCountyIdToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :county_id, :integer
  end
end
