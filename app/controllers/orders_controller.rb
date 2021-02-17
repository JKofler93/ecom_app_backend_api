class OrdersController < ApplicationController

    def index 
        orders = Order.all 
        render json: orders, :except => [:created_at, :updated_at]
    end 

    def update
        order = Order.find(params[:id])
        order.update(orders_params)
        render json: order
    end 

    
    def create
        order = Order.create!(orders_params)
        render json: order
    end 

        private 
    def orders_params
        params.require(:order).permit(:user_id, :date, :checked_out)
        # render json: item_order 
    end 

end
