class OrdersSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :date, :checked_out
end
