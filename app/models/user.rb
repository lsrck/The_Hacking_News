class User < ApplicationRecord
	has_many :boards, dependent: :destroy
	has_many :comments, dependent: :destroy
	validates :name, presence: true
end
