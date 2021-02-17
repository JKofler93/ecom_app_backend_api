class ItemsSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :price, :brand, :image, :size, :style
end
