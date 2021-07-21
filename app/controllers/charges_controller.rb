class ChargesController < ApplicationController


    
    def create
        Stripe.api_key = "sk_test_51Id3rSAGUmCFAtH57Y3qQ806JjFVsNqbBNJdQzCNoJgUbPAscDBZAuP56jnMkUVkeNLLutw1tptM9K2dbluaU9Mp00DstqR6jk"
    
        order = Order.find(params[:orderId])
        amount = order.items.sum(:cost) * 100
        # customer = Stripe::Customer.create(source: params[:stripeToken])


        puts '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
        puts amount


        Stripe::Charge.create(
            # :customer => customer.id,
            :amount => amount.to_i,
            :currency => 'usd',
            :source => 'tok_visa',
            :description => 'Test Purchase'
        )
    end

end
