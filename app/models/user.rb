class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tasks, dependent: :destroy
  has_many :incoming_offers, through: :tasks, source: :offers
  has_many :offers
  has_many :reviews

  mount_uploader :avatar, AvatarUploader

  # consider adding this function at a later point in production:
  # https://stackoverflow.com/questions/15655005/rails-dependent-destroy-with-conditions
  # before_destroy :destroy_dog ###### before_destroy :method_call
  # def destroy_dog
  # dog.destroy unless dog.owner
  # end

  validates :email, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def picture_url
    if avatar_url
      avatar_url
    else
      "default-avatar.png"
    end
  end
end
