class AddImageUrlToRents < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :image_url, :string
  end
end
