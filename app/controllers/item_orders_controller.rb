class ItemOrdersController < ApplicationController

    def index 
        item_orders = ItemOrder.all 
        render json: item_orders, :include => { 
            :item => {:except => [:created_at, :updated_at]}, 
            :order => {:except => [:created_at, :updated_at]}
         },:except => [:created_at, :updated_at]
    end 
    
#     render json: users, :include => {
#         :item_orders => {:except => [:created_at, :updated_at]},
#         :orders => {:except => [:date]}

#    }, :except => [:created_at, :updated_at]

def create 
    item_order = ItemOrder.create(item_orders_params)
    render json: item_order, :include => { 
            :item => {:except => [:created_at, :updated_at]}, 
            :order => {:except => [:created_at, :updated_at]}
         },:except => [:created_at, :updated_at]
end 

# def show
#     item_order = ItemOrder.find_by(id: params['id'])
#     render json: item_order
# end 

def destroy 
    item_order = ItemOrder.find(params[:id])
    # console.log(item_order)
    item_order.destroy 
    render json: {}
end 

# item_order
private 
def item_orders_params
    params.require(:item_order).permit(:item_id, :order_id)
    # render json: item_order 
end 

end
