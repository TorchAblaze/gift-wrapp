class CreateGifts < ActiveRecord::Migration[7.0]
  def change
    create_table :gifts do |t|
      t.float :price
      t.string :name, null: false
      t.boolean :purchased, default: false

      t.timestamps
    end
  end
end
