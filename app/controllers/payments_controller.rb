class PaymentsController < ApplicationController
 protect_from_forgery with: :exception
    before_action :authenticate_user!
def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :source => token,
        :amount => (@product.price * 100).to_i, # amount in cents, again
        :currency => "eur",
        :description => params[:stripeEmail]
      )

    if charge.paid
      Order.create(product_id: @product.id, user_id: @user.id, total: @product.price)
      flash[:notice] = "success payment  #{@product.name}"
    
    end

    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
      redirect_to new_charge_path
    end

    
end
end



