class Store < ApplicationRecord
	has_many :foods,dependent: :destroy
end
