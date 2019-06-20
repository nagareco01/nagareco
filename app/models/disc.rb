class Disc < ApplicationRecord

	validates :disc_number, presence: true

	has_many :songs, inverse_of: :disc
	accepts_nested_attributes_for :songs, reject_if: :all_blank, allow_destroy: true
	
	belongs_to :cd

end
