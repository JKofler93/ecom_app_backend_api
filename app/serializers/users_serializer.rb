class UsersSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :orders
  has_many :reviews
  has_many :item_orders, through: :orders
  has_many :item, through: :order
end
