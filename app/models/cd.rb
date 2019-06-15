class Cd < ApplicationRecord

	enum sale_status: { 販売中: 0, 販売停止中: 1 }

	attachment :image

	has_many :items
	has_many :order_items
	has_many :discs
	belongs_to :artist
	belongs_to :label
	belongs_to :genre
end
