class User < ApplicationRecord
    has_secure_password
    # password "123" => password_digest "ASDasd73426s7689ddsfdsa"
    #  user.authenticate("123")
    # validates :email, uniqueness: { case_sensitive: false }
    has_many :orders
    has_many :reviews
    has_many :item_orders, through: :orders
    has_many :item, through: :order
end
