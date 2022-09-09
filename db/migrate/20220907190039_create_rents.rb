class CreateRents < ActiveRecord::Migration[6.1]
  def change
    create_table :rents do |t|
      t.string  :title
      t.string  :region
      t.string  :address
      t.integer :room
      t.string  :bedroom
      t.integer :size
      t.string  :currency
      t.integer :price

    end
  end
end
