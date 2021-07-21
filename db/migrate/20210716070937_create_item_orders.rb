class CreateItemOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :item_orders do |t|
      t.belongs_to :item
      t.belongs_to :order

      t.timestamps
    end
  end
end
