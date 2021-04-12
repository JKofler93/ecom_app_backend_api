require 'stripe'
# require 'pry'
class ChargesController < ApplicationController
    
    def new
    end

    def create 

        @amount = 500
        Stripe.api_key= "sk_test_51IaO1jGHXlKuOp6FqnSLwV7hm2h9fW8CkJTsadyKR5TODBYlumhnkOjSknJRNF03a5XFn4tPy7yAUpTwre8n0xx2003unYjV4Q" 
        # ENV['STRIPE_SECRET_KEY']
     
        customer = Stripe::Customer.create(
                    :email => params[:stripeEmail],
                    :source => params[:stripeToken],
                )
                charge= Stripe::Charge.create({
                    :customer => customer.id,
                    :amount => @amount,
                    :description => "Rails stripe customer",
                    :currency => 'usd',
                 })
                rescue Stripe::CardError => e
                    render json: {message: "oops"}
                    # flash[:error] = e.message
                    # redirect_to new_charge_path
                  end
end

 
   


