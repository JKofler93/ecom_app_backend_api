class ItemsController < ApplicationController

    def index 
        items = Item.all 
        render json: items, :except => [:created_at, :updated_at]
    end 

#     render json: users, :include => {
#         :item_orders => {:except => [:created_at, :updated_at]},
#         :orders => {:except => [:date]}

#    }, :except => [:created_at, :updated_at]

end
