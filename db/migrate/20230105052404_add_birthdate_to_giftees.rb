class AddBirthdateToGiftees < ActiveRecord::Migration[7.0]
  def change
    add_column :giftees, :birthdate, :date
  end
end
