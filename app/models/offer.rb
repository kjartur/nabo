class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :task
  has_many :reviews
  validates :state, inclusion: { in: %w(pending booked completed rejected) }
end
