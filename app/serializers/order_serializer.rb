class OrderSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper

  attributes :id, :paid, :tracking ,:total_items, :total_cost, :item_names, :items, :item_orders

  
  has_many :items
  has_many :item_orders
  belongs_to :user


  def total_items
    self.object.items.length
  end

  def total_cost
    summ = self.object.items.sum(:cost)
    number_to_currency(summ)
  end 

  def item_names 
    self.object.items.map do |s|
      s.name
    end
  end
  
end
