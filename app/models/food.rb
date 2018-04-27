class Food < ApplicationRecord
	belongs_to :store
	validates :name,presence: true
	validates :price,presence: true
end
