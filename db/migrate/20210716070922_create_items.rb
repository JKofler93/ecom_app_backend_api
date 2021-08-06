class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.float :cost
      t.string :brand
      t.string :image

      t.timestamps
    end
  end
end
