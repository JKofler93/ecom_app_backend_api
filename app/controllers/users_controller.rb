class UsersController < ApplicationController

    def index 
        users = User.all 
        orders = Order.all
        render json: users, :include => {
            :orders => {:except => [:updated_at]}

       }
    end 

    # def create
    #     user = User.create(user_params)
        
    #     if user.valid?
    #         render json: {token: token(user.id), user_id: user.id}
    #     else
    #         render json: {error: user.errors.full_messages}, status: :unprocessable_entity
    #     end 
    # end 

    def show
        user = User.find(params[:id])
        render json: user
    end 

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    private

    def user_params
        params.permit(:email, :password)
    end 

end