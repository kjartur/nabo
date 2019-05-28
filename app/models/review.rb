class Review < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :description, :rating, presence: true
end
