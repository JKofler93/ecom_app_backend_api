class ItemOrdersController < ApplicationController

    def index 
        item_orders = ItemOrder.all 
        render json: item_orders, :except => [:created_at, :updated_at]
    end 
end
