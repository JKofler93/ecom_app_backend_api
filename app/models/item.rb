class Item < ApplicationRecord
    has_many :item_orders
    has_many :reviews
    has_many :orders, through: :item_orders
    has_many :users, through: :reviews

end
