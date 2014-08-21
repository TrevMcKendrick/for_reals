class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :site_address

      t.timestamps null: false
    end
  end
end
