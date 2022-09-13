class CreateGiftees < ActiveRecord::Migration[7.0]
  def change
    create_table :giftees do |t|
      t.string :name, null: false
      t.string :phone_number
      t.string :email

      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country

      t.timestamps
    end
  end
end
