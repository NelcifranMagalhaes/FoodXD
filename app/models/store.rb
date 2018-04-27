class Store < ApplicationRecord
	has_many :foods,dependent: :destroy
	validates :address,presence: true
	validates :name,presence: true

end
