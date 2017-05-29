class Product < ApplicationRecord

	validates :name, presence: true
	validates :price, presence: true
	validates :color, presence: true
	validates :image_url, presence: true

	has_many :orders
	has_many :comments

	def highest_rating_comment
		comments.rating_desc.first
	end

	def lowest_rating_comment
	  comments.rating_asc.first
	end

	def average_rating
		comments.average(:rating).to_f
	end

	def views
  	$redis.get("product:#{id}") # this is equivalent to 'GET product:1'
	end

	def viewed!
  	$redis.incr("product:#{id}") # this is equivalent to 'INC product:1'
	end

end
