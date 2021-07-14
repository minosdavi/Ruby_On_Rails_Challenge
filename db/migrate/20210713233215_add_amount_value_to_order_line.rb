class AddAmountValueToOrderLine < ActiveRecord::Migration[6.1]
  def change
    add_column :order_lines, :amount, :integer
    add_column :order_lines, :value, :float
  end
end
