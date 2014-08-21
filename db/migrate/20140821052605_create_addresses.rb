class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :number
      t.string :number_direction
      t.string :street_name
      t.string :street_direction
      t.string :street_type
      t.string :complex
      t.string :unit
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps null: false
    end
  end
end
