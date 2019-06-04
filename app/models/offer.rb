class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :task
  has_many :reviews
  validates :state, inclusion: { in: %w(pending booked done rejected) }
  validates :comments, presence: true
end
