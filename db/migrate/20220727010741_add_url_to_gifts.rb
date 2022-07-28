class AddUrlToGifts < ActiveRecord::Migration[7.0]
  def change
    add_column :gifts, :url, :string
  end
end
