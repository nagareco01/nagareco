class Cd < ApplicationRecord

	enum sale_status: { 販売中: 0, 販売停止中: 1 }

	validates :name, presence: true
	validates :description, presence: true, length: { maximum: 5000 }
	validates :price, presence: true
	validates :stock, presence: true

	attachment :image

	has_many :items
	has_many :order_items
	has_many :discs, inverse_of: :cd
	accepts_nested_attributes_for :discs, reject_if: :all_blank, allow_destroy: true
	belongs_to :artist
	belongs_to :label
	belongs_to :genre

end
