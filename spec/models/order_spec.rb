require 'rails_helper'

describe User do 
	context 'order model validation' do
		let (:product) {Product.create!(name:"mariam",price:"22",color:"red",description:"drink")}
		
		before do
			@user = FactoryBot.create(:user)
			product.orders.create!(product:product, user: @user, total: 2.0)

		end

		it "is not valid without product_id" do
			expect(Order.new(product_id:nil)).not_to be_valid
		end 

		

	end
end