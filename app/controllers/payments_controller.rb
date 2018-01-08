class PaymentsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@product = Product.find(params[:product_id])
		@user = current_user
		token = params[:stripeToken]
		begin
		   charge = Stripe::Charge.create(
                amount: (@product.price*100),
                currency: "gbp",
                source: token,
                description: params[:stripeEmail]
)

        if charge.paid
          Order.create(
            user_id: @user.id,
            product_id: params[:product_id],
            total: @product.price * 100,
)
            flash[:notice] = "Your payment was processed successfully #{@product.name}"
        end

		rescue Stripe::CardError => e
			body = e.json_body
			err = body[:error]
			flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
		end
		redirect_to product_path(@product)
	end
end



