class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.date :date
      t.boolean :checked_out

      t.timestamps
    end
  end
end
