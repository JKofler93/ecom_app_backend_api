require 'stripe'
require 'byebug'
class ChargesController < ApplicationController
    
    def new
    end

    def create 
            # token = req.body;
            # roundedTotalCost = req.body
        # @amount = 500
        Stripe.api_key= "sk_test_51IaO1jGHXlKuOp6FqnSLwV7hm2h9fW8CkJTsadyKR5TODBYlumhnkOjSknJRNF03a5XFn4tPy7yAUpTwre8n0xx2003unYjV4Q" 
        # ENV['STRIPE_SECRET_KEY']
        # byebug
       
        customer = Stripe::Customer.create(
                    :email => params[:token][:email],
                    :source => params[:token][:id]
                )
                charge= Stripe::Charge.create({
                    :customer => customer.id,
                    :amount => params[:total] * 100,
                    :receipt_email=>  params[:token][:email],
                    # :livemode => true,
                    # :description => params[:indItem],
                    :currency => 'usd',
                    :shipping =>{
                        name: params[:token][:card][:name],
                        address: {
                            line1: params[:token][:card][:address_line1],
                            city: params[:token][:card][:address_city],
                            country:params[:token][:card][:country],
                            postal_code: params[:token][:card][:address_zip]
                        }
                    }
                 })
                rescue Stripe::CardError => e
                    render json: {message: "oops"}
                    # flash[:error] = e.message
                    # redirect_to new_charge_path
                  end
end

 
   


