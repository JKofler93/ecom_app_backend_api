class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :paid_orders

  has_many :orders
  has_many :items

  def paid_orders
    self.object.orders.select do |order|
      order.paid == true
    end 
  end
end
