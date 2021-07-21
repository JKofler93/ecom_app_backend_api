class User < ApplicationRecord
    has_many :orders
    has_many :item_orders, through: :orders
    has_many :items, through: :item_orders

    has_secure_password 
    
    validates :email, uniqueness: true
    validates :email, presence: true



end
