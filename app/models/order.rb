class Order < ApplicationRecord
    belongs_to :user
    has_many :item_orders
    has_many :item, through: :item_orders

end
