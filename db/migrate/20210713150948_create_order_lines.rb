class CreateOrderLines < ActiveRecord::Migration[6.1]
  def change
    create_table :order_lines do |t|
      t.references :Product, null: false, foreign_key: true
      t.belongs_to :Order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
