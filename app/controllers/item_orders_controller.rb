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

end
