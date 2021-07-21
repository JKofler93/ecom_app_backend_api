class OrdersController < ApplicationController

    def index
        orders = Order.all
        render json: orders
    end 

    def show
        order = Order.find(params[:id])
        render json: order
    end 

    def create
        order = Order.create(order_params)

        if order.valid?
            render json: order
        else 
            render json: {error: "Creating an order failed"}
        end 
    end 

    def update 
        order = Order.find(params[:id])
        order.update(order_params)

        if order.valid?
            render json: order
        else 
            render json: {error: "Updating the order did not work"}
        end 
    end

    private 

    def order_params
        params.require(:order).permit(:user_id, :tracking, :paid)
    end 
end
