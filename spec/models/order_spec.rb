require 'rails_helper'

describe User do 
	context 'order model validation' do
		let (:product) {Product.create!(name:"mariam",price:"22",color:"red",description:"drink")}
		let (:user) {User.create!(name: "mariam", email: "a@a.com", password: "123456")}
		before do
			product.orders.create!(product:product, user: user, total: 2.0)

		end

		it "is not valid without product_id" do
			expect(Order.new(product_id:nil)).not_to be_valid
		end 

		it "is not valid without User_id" do
			expect(Order.new(user_id:nil)).not_to be_valid
		end 
		it "is valid with float total number" do
			expect(Order.new(product_id: 1, user_id: 1, total:2.0)).to be_valid
		end

	end
end