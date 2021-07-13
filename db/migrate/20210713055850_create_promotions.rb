class CreatePromotions < ActiveRecord::Migration[6.1]
  def change
    create_table :promotions do |t|
      t.integer :take
      t.integer :pay

      t.timestamps
    end
  end
end
