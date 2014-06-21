class Merchant < ActiveRecord::Base
	# A merchant can have many stores
	has_many :stores
end
