class Store < ActiveRecord::Base
	# Each award is linked to a student through 
	# the student_id field.
	belongs_to :merchant
end
