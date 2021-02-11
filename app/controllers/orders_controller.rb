class OrdersController < ApplicationController

    def index 
        orders = Order.all 
        render json: orders, :except => [:created_at, :updated_at]
    end 

end
