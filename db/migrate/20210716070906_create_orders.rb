class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.boolean :paid
      t.string :tracking
      t.belongs_to :user

      t.timestamps
    end
  end
end
