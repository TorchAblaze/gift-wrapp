class RenamePeopleToGiftees < ActiveRecord::Migration[7.0]
  def change
    rename_table :people, :giftees

    rename_column :gifts, :person_id, :giftee_id
  end
end
