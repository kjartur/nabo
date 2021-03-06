class Task < ApplicationRecord
  belongs_to :user
  has_many :offers, :dependent => :destroy
  has_many :users, through: :offers

  mount_uploader :photo, TaskPhotosUploader
  mount_uploader :avatar, AvatarUploader

  validates :address, :date, :description, :amount_coins, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  def booked_offer
    offers.where(state: 'booked').first
  end

  def offer_booked?
    booked_offer.present?
  end
end
