class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.text :description
      t.integer :order_number
      t.float :price
      t.integer :stock
      t.integer :take
      t.integer :pay

      t.timestamps
    end
  end
end
