class AddNewFieldsToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :phone_number, :string
    add_column :people, :email, :string
    add_column :people, :street_1, :string
    add_column :people, :street_2, :string
    add_column :people, :city, :string
    add_column :people, :state, :string
    add_column :people, :zipcode, :string
    add_column :people, :country, :string
  end
end
