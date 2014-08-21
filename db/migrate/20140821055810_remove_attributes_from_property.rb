class RemoveAttributesFromProperty < ActiveRecord::Migration
  def change
    remove_column :properties, :street_address_one, :string
    remove_column :properties, :street_address_two, :string
    remove_column :properties, :complex_number, :string
    remove_column :properties, :city, :string
    remove_column :properties, :state, :string
    remove_column :properties, :zipcode, :string
  end
end
