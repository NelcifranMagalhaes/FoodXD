class Store < ApplicationRecord
	has_many :foods,inverse_of: :store,dependent: :destroy
	accepts_nested_attributes_for :foods, reject_if: :all_blank, allow_destroy: true
 	has_one_attached :logo

	validates :address,presence: true
	validates :name,presence: true

end
