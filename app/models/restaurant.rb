class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, presence: true,
                   length: { minimum: 5 }
	belongs_to :user
end
