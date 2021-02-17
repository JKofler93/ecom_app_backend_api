class ItemOrdersSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :item_id

  belongs_to :item
  belongs_to :order
end
