class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.float :price
      t.float :delivery_tax

      t.timestamps
    end
  end
end
