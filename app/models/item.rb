class Item < ApplicationRecord

    has_many :item_orders
    has_many :orders, through: :item_orders
    has_many :users, through: :orders

end
