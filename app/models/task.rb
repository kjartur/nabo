class Task < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :address, :date, :description, :amount_coins, presence: true
end
