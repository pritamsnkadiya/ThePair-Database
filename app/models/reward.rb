class Reward < ApplicationRecord
	 belongs_to:user
	 validates :amount, numericality: true
	 validates :user_id, presence: true
end
