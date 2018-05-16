class Store < ApplicationRecord
	has_many :foods,inverse_of: :store,dependent: :destroy
	accepts_nested_attributes_for :foods, reject_if: :all_blank, allow_destroy: true
 	has_one_attached :logo

	geocoded_by :address   # can also be an IP address
	reverse_geocoded_by :latitude, :longitude

	after_validation :geocode          # auto-fetch coordinates
	
	validates :address,presence: true
	validates :name,presence: true

end
