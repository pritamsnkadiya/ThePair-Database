class User < ApplicationRecord

	has_many :rewards
	validates :mobile, presence: true, uniqueness: true
	validates :name, presence: true
end
