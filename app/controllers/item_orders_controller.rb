class ItemOrdersController < ApplicationController

    def create
        item_order = ItemOrder.create(item_order_params)
        render json: item_order
    end 

    def index 
        item_orders = ItemOrder.all

        render json: item_orders
    end 

    def destroy 
        item_order = ItemOrder.find(params[:id])
        item_order.destroy 

        item_orders = ItemOrder.all
        render json: item_orders
    end 

    private

    def item_order_params
        params.permit(:item_id, :order_id)
    end 

end
