class Cd < ApplicationRecord

	has_many :items
	has_many :order_items
	has_many :discs
	belongs_to :artist
	belongs_to :label
	belongs_to :genre
	
end
