class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street_address_one
      t.string :street_address_two
      t.string :complex_number
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
