class DropGiftees < ActiveRecord::Migration[7.0]
  def change
    drop_table :giftees
  end
end
