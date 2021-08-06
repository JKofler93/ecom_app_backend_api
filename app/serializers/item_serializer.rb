class ItemSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper

  attributes :id, :name, :category, :cost, :brand, :image, :description, :price

  def price 
    number_to_currency(self.object.cost)
  end 
end
