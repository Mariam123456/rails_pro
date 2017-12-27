require 'rails_helper'

describe User do 
	context 'user model validation' do

		it "is not valid without email" do
			expect(User.new(email:nil)).not_to be_valid
		end 

		it "is not valid without password" do
			expect(User.new(password:nil)).not_to be_valid
		end 
		it "is valid without last_name" do
			expect(User.new(name: "mariam", email: "m@a.com", password: "123456")).to be_valid
		end

	end
end