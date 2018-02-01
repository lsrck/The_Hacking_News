class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :board
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
  validates :body, presence: true
end
