class Warehouse < ActiveRecord::Base
	has_many :stores
end
