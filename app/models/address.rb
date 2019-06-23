class Address < ApplicationRecord

	validates :last_name, presence: true
	validates :first_name, presence: true
	validates :sub_post_code, presence: true
	validates :sub_address, presence: true
	
	belongs_to :client

end
