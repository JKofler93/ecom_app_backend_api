class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, :except => [:created_at, :updated_at]
    end 

    def new 
        user = User.new 
        render json: user
    end 

    def create
        user = User.find_or_create_by(email: params['email'])
        render json: user
    end 

    def show 
        user = User.find_by(id: params['id'])
        render json: user
    end 

end