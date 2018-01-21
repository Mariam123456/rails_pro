class Product < ApplicationRecord
	has_many :orders
	has_many :comments

	validates :name, presence: true
	validates :description, presence: true
	validates :color, presence: true
	validates :price, presence: true

	def self.search(search_term)
		like_type = Rails.env.production? ? "ilike" : "LIKE"
		Product.where("name #{like_type} ?", "%#{search_term}%")
	end


	def highest_rating_comment
		comments.rating_desc.first.rating
	end

	def average_rating
		comments.average(:rating).to_f
	end

	def lowest_rating_comment
		comments.rating_asc.first.rating
	end



end
