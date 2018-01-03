require 'rails_helper'

describe Product do 
	context 'when the product has comments' do
		let (:product) {Product.create!(name:"mariam",price:"22",color:"red",description:"drink")}


		before do
			@user = FactoryBot.create(:user)
			product.comments.create!(rating: 1, user: @user, body: "bad!")
			product.comments.create!(rating:3 , user: @user, body: "good!")
			product.comments.create!(rating: 5, user: @user, body: "great!")
			
		end

		it "returns the average rating of all comments" do
			expect(product.average_rating).to eq(3)
		end
		
		it "is not valid without a name" do
			expect(Product.new(description: "drink")).not_to be_valid
		end

		it "is not valid without email" do
			expect(User.new(name: "mariam")).not_to be_valid
		end
	end
end

