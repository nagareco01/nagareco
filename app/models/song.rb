class Song < ApplicationRecord

	validates :song_name, presence: true
	validates :song_number, presence: true

	belongs_to :disc

end
