class Task < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_many :users, through: :offers

  validates :address, :date, :description, :amount_coins, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
