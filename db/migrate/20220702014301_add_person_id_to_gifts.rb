class AddPersonIdToGifts < ActiveRecord::Migration[7.0]
  def change
    add_column :gifts, :person_id, :integer, null: false
  end
end
