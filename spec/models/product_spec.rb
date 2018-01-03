require 'rails_helper'

describe Product do 
	context 'when the product has comments' do
		
		before do
			@product = FactoryBot.create(:product)
			@user = FactoryBot.create(:user)
			@product.comments.create!(rating: 1, user: @user, body: "bad!")
			@product.comments.create!(rating:3 , user: @user, body: "good!")
			@product.comments.create!(rating: 5, user: @user, body: "great!")
			
		end

		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq(3)
		end
		

		it "is not valid without email" do
		  @user = FactoryBot.build(:user, email: "not_an_email")
    		expect(@user).to_not be_valid
		end

	end
end

