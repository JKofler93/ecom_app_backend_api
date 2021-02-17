class UsersSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest

  has_many :orders
  has_many :reviews
  has_many :item_orders
  has_many :items
end
